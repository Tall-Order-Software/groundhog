I store and present help for the Logic-Boolean library.

I am a vanilla subclass of CustomHelp, which is part of the help system.  You
can read about the help system, including subclasses of CustomHelp, by
evaluating

	HelpBrowser openOn: HelpOnHelp

or opening a Help Browser from the system Help menu and navigating to the Help
on Help topic.

The easiest way to add a new page to me is to evaluate

	self instanceSide edit: #newPage

and use the editor that opens just as you would use the code pane in the system
browser.  You can see the list of existing pages in the pages protocol on my
class side and edit them just as you would edit a new page.

After you add or edit pages, evaluate

	SystemHelp resetHelpTopic

and open a new Help Browser to see your changes.
