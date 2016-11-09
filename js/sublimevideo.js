
/** http://docs.sublimevideo.net/playlists **/
/** jQuery version **/

var SublimeVideo = SublimeVideo || { playlists: {} };

jQuery(document).ready(function() {
  // Automatically instantiate all the playlists in the page
  jQuery('.playlist').each(function() { SublimeVideo.playlists[jQuery(this).attr('id')] = new SublimeVideoPlaylist(jQuery(this).attr('id')); });
});

var SublimeVideoPlaylist = function(playlistWrapperId){
  if (!$("#" + playlistWrapperId)) return;

  this.playlistWrapperId = playlistWrapperId;
  this.videosCount = jQuery("#" + this.playlistWrapperId + " .video_wrap").size();

  var matches = jQuery("#" + this.playlistWrapperId + " video").attr("id").match(/^video(\d+)$/);
  this.firstVideoIndex = parseInt(matches[1], 10);
  this.lastVideoIndex = this.firstVideoIndex + this.videosCount - 1;

  this.setupObservers();

  this.loadDemo();
};

jQuery.extend(SublimeVideoPlaylist.prototype, {
  setupObservers: function() {
    var that = this;

    jQuery("#"+ this.playlistWrapperId + " li").each(function() {
      jQuery(this).click(function(event) {
        event.preventDefault();

        if (!jQuery(this).hasClass("active")) {
          that.clickOnThumbnail(jQuery(this).attr("id"));
        }
      });
    });
  },
  loadDemo: function() {
    // Only if not the first time here
    if (this.activeVideoId) this.reset();

    this.activeVideoId = "video" + this.firstVideoIndex;

    // Show first video
    this.showActiveVideo();
  },
  reset: function() {
    // Hide the current active video
    jQuery("#" + this.playlistWrapperId + " .video_wrap.active").removeClass("active");

    // Get current active video and unprepare it
    // we could have called sublimevideo.unprepare() without any arguments, but this is faster
    sublimevideo.unprepare(this.activeVideoId);

    // Deselect its thumbnail
    this.deselectThumbnail(this.activeVideoId);
  },
  clickOnThumbnail: function(thumbnailId) {
    // Basically undo all the stuff and bring it back to the point before js kicked in
    this.reset();

    // Set the new active video
    this.activeVideoId = thumbnailId.replace(/^thumbnail_/, "");

    // And show the video
    this.showActiveVideo();

    // And finally, prepare and play it
    sublimevideo.prepareAndPlay(this.activeVideoId);
  },
  selectThumbnail: function(videoId) {
    jQuery("#thumbnail_" + videoId).addClass("active");
  },
  deselectThumbnail: function(videoId) {
    jQuery("#thumbnail_" + videoId).removeClass("active");
  },
  showActiveVideo: function() {
    // Select its thumbnail
    this.selectThumbnail(this.activeVideoId);

    // Show it
    jQuery("#" + this.activeVideoId).parent().addClass("active");
  },
  handleAutoNext: function(endedVideoId) {
    var nextId = parseInt(endedVideoId.replace(/^video/, ""), 10) + 1;
    if (nextId > 1 && nextId <= this.lastVideoIndex) {
      this.clickOnThumbnail("thumbnail_video" + nextId);
    }
  }
});

sublimevideo.ready(function() {
  // Uncomment the following line if you want to autoplay the playlist on page load (be sure to change "video1" to the id of the first video to autoplay)
  // sublimevideo.play("video1");

  sublimevideo.onEnd(function(sv) {
    var matches = sv.element.id.match(/^video(\d+)$/);
    if (matches != undefined) {
      var playlistId = jQuery(sv.element).parents('.playlist').attr("id");
      if (parseInt(matches[1], 10) < SublimeVideo.playlists[playlistId].lastVideoIndex) {
        SublimeVideo.playlists[playlistId].handleAutoNext(sv.element.id);
      }
      // Uncomment the following 3 lines if you want the whole playlist to loop
      // else {
      //   SublimeVideo.playlists[playlistId].loadDemo();
      //   sublimevideo.prepareAndPlay(SublimeVideo.playlists[playlistId].activeVideoId);
      // }
    }
  });
});