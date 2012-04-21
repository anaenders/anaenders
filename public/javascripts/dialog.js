$(function() {
  Dialog.init();
});

var Dialog = function() {
  
  return {
    init: function() {
      this.dialog_wedding_site();
      this.dialog_scully();
      this.dialog_mally();
      this.dialog_kayandy();
      this.dialog_kico();
      this.dialog_ajaline();
      this.dialog_satellite();
      this.dialog_kenneth_cole();
      this.dialog_bobbi_brown();
      this.dialog_yigal();
      this.dialog_boast();
      this.dialog_lanecrawford();
      this.dialog_lanecrawford_teaser();
      this.dialog_grandsf();
      this.dialog_newlywish();
      this.dialog_bw_collage1();
      this.dialog_bw_collage2();
      this.dialog_bw_collage3();
      this.dialog_color_collage1();
      this.dialog_color_collage2();
      this.dialog_color_collage3();
    },
    
    dialog_wedding_site: function() {   
      $('#wedding_site').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#wedding_site_opener').live('click', function() {
    	  Dialog.open('#wedding_site');
        return false;
    	});
    	
      $('#js-close-modal').live('click', function() {
        Dialog.close('#wedding_site');
        return false;
      });
    },
    
    dialog_scully: function() {   
      $('#scully').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#scully_opener').live('click', function() {
    	  Dialog.open('#scully');
        return false;
    	});
    	
      $('#js-close-modal').live('click', function() {
        Dialog.close('#scully');
        return false;
      });
    },
    
    dialog_mally: function() {   
      $('#mally').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#mally_opener').live('click', function() {
    	  Dialog.open('#mally');
        return false;
    	});
    	
      $('#js-close-modal').live('click', function() {
        Dialog.close('#mally');
        return false;
      });
    },
    
    dialog_kayandy: function() {   
      $('#kayandy').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#kayandy_opener').live('click', function() {
    	  Dialog.open('#kayandy');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#kayandy');
        return false;
      });
    },
    
    dialog_kico: function() {   
      $('#kico').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#kico_opener').live('click', function() {
    	  Dialog.open('#kico');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#kico');
        return false;
      });
    },
    
    dialog_ajaline: function() {   
      $('#ajaline').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#ajaline_opener').live('click', function() {
    	  Dialog.open('#ajaline');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#ajaline');
        return false;
      });
    },
    
    dialog_satellite: function() {   
      $('#satellite').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#satellite_opener').live('click', function() {
    	  Dialog.open('#satellite');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#satellite');
        return false;
      });
    },
    
    dialog_kenneth_cole: function() {   
      $('#kenneth_cole').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#kenneth_cole_opener').live('click', function() {
    	  Dialog.open('#kenneth_cole');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#kenneth_cole');
        return false;
      });
    },
    
    dialog_bobbi_brown: function() {   
      $('#bobbi_brown').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#bobbi_brown_opener').live('click', function() {
    	  Dialog.open('#bobbi_brown');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#bobbi_brown');
        return false;
      });
    },
    
    dialog_yigal: function() {   
      $('#yigal').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#yigal_opener').live('click', function() {
    	  Dialog.open('#yigal');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#yigal');
        return false;
      });
    },
    
    dialog_boast: function() {   
      $('#boast').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#boast_opener').live('click', function() {
    	  Dialog.open('#boast');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#boast');
        return false;
      });
    },
    
    dialog_lanecrawford: function() {   
      $('#lanecrawford').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#lanecrawford_opener').live('click', function() {
    	  Dialog.open('#lanecrawford');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#lanecrawford');
        return false;
      });
    },
    
    dialog_lanecrawford_teaser: function() {   
      $('#lanecrawford_teaser').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#lanecrawford_teaser_opener').live('click', function() {
    	  Dialog.open('#lanecrawford_teaser');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#lanecrawford_teaser');
        return false;
      });
    },
    
    dialog_grandsf: function() {   
      $('#grandsf').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#grandsf_opener').live('click', function() {
    	  Dialog.open('#grandsf');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#grandsf');
        return false;
      });
    },
    
    dialog_newlywish: function() {   
      $('#newlywish').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 780,
      	position:  [ 'center', 'center' ]
      });
      
      $('#newlywish_opener').live('click', function() {
    	  Dialog.open('#newlywish');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#newlywish');
        return false;
      });
    },
    
    dialog_bw_collage1: function() {   
      $('#bwcollage1').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 660,
      	position:  [ 'center', 'center' ]
      });
      
      $('#bwcollage1_opener').live('click', function() {
    	  Dialog.open('#bwcollage1');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#bwcollage1');
        return false;
      });
    },
    
    dialog_bw_collage2: function() {   
      $('#bwcollage2').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 660,
      	position:  [ 'center', 'center' ]
      });
      
      $('#bwcollage2_opener').live('click', function() {
    	  Dialog.open('#bwcollage2');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#bwcollage2');
        return false;
      });
    },
    
    dialog_bw_collage3: function() {   
      $('#bwcollage3').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 500,
      	position:  [ 'center', 'center' ]
      });
      
      $('#bwcollage3_opener').live('click', function() {
    	  Dialog.open('#bwcollage3');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#bwcollage3');
        return false;
      });
    },
    
    dialog_color_collage1: function() {   
      $('#color_collage1').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 500,
      	position:  [ 'center', 'center' ]
      });
      
      $('#color_collage1_opener').live('click', function() {
    	  Dialog.open('#color_collage1');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#color_collage1');
        return false;
      });
    },
    
    dialog_color_collage2: function() {   
      $('#color_collage2').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 660,
      	position:  [ 'center', 'center' ]
      });
      
      $('#color_collage2_opener').live('click', function() {
    	  Dialog.open('#color_collage2');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#color_collage2');
        return false;
      });
    },
    
    dialog_color_collage3: function() {   
      $('#color_collage3').dialog({
        autoOpen: false,
      	modal: true,
      	resizable: false,
      	width: 660,
      	position:  [ 'center', 'center' ]
      });
      
      $('#color_collage3_opener').live('click', function() {
    	  Dialog.open('#color_collage3');
        return false;
    	});
    	
    	$('#js-close-modal').live('click', function() {
        Dialog.close('#color_collage3');
        return false;
      });
    },
    
    open: function(dialog_name) {
      $(dialog_name).dialog('open');
    },
    
    close: function(dialog_name) {
      $(dialog_name).dialog('close');
    }
    
  }
  
}();