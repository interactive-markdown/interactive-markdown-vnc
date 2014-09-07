var VNC = function(options) {
    var self = this;
    self._rfb = null;
    window.INCLUDE_URI = options.include_path || '../lib/js/';
    Util.load_scripts(["webutil.js", "base64.js", "websock.js", "des.js",
                       "keysymdef.js", "keyboard.js", "input.js", "display.js",
                       "jsunzip.js", "rfb.js"]);
    window.onscriptsload = function () {
        self._rfb = new RFB({
            'target':       $D('main'),
            'encrypt':      WebUtil.getQueryVar('encrypt',
                    (window.location.protocol === "https:")),
            'repeaterID':   WebUtil.getQueryVar('repeaterID', ''),
            'true_color':   WebUtil.getQueryVar('true_color', true),
            'local_cursor': WebUtil.getQueryVar('cursor', true),
            'shared':       WebUtil.getQueryVar('shared', true),
            'view_only':    WebUtil.getQueryVar('view_only', false),
            'updateState':  function updateState(rfb, state, oldstate, msg) {
                console.log(state);
            }
        });
        self._rfb.connect(options.host, options.port, options.password || '', '');
    };
};