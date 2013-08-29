 
 /*------------------------------------------------------------------------
    File        : testform
    Purpose     : 
    Syntax      : 
    Description : 
    Author(s)   : dmantegh
    Created     : Thu Aug 29 10:33:17 BST 2013
    Notes       : 
  ----------------------------------------------------------------------*/

USING Progress.Lang.*.
USING Progress.Windows.Form.



CLASS testform INHERITS Form: 
	
	DEFINE PRIVATE VARIABLE components AS System.ComponentModel.IContainer NO-UNDO.

		
	CONSTRUCTOR PUBLIC testform (  ):
		
		
        SUPER().
        InitializeComponent().
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

	END CONSTRUCTOR.

	METHOD PRIVATE VOID InitializeComponent(  ):
		
        /* NOTE: The following method is automatically generated.
        
        We strongly suggest that the contents of this method only be modified using the
        Visual Designer to avoid any incompatible modifications.
        
        Modifying the contents of this method using a code editor will invalidate any support for this file. */
        THIS-OBJECT:SuspendLayout().
        THIS-OBJECT:Name = "testform".
        THIS-OBJECT:Text = "testform".
        THIS-OBJECT:ResumeLayout(FALSE).
        CATCH e AS Progress.Lang.Error:
            UNDO, THROW e.
        END CATCH.

	END METHOD.

	DESTRUCTOR PUBLIC testform ( ):

		IF VALID-OBJECT(components) THEN DO:
			CAST(components, System.IDisposable):Dispose().
		END.

	END DESTRUCTOR.

END CLASS.