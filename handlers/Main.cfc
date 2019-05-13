component output="false" extends="coldbox.system.EventHandler" {
	//  Default Action 

	/**
	 * My main event
	 */
	public void function index(event, rc, prc) output=false {
		prc.welcomeMessage = "Welcome to ColdBox!";
		event.setView("main/index");
	}
	//  Do Something Action 

	/**
	 * Do Something
	 */
	public void function doSomething(event, rc, prc) output=false {
		relocate( "main.index" );
	}
	// ---------------------------------------- GLOBAL IMPLICIT EVENTS ONLY ---------------------------------------
	//  In order for these events to fire, you must declare them in the ColdBox.cfc 

	public void function onAppInit(event, rc, prc) output=false {
	}

	public void function onRequestStart(event, rc, prc) output=false {
	}

	public void function onRequestEnd(event, rc, prc) output=false {
	}

	public void function onSessionStart(event, rc, prc) output=false {
	}

	public void function onSessionEnd(event, rc, prc) output=false {
		var sessionScope = event.getValue("sessionReference");
		var applicationScope = event.getValue("applicationReference");
	}

	public void function onException(event, rc, prc) output=false {

		//Grab Exception From private request collection, placed by ColdBox Exception Handling
			var exception = prc.exception;
			//Place exception handler below:
	}

	public void function onMissingTemplate(event, rc, prc) output=false {

		//Grab missingTemplate From request collection, placed by ColdBox
			var missingTemplate = event.getValue("missingTemplate");
	}

}