initialization
initializeWindow: aWindowPresenter
	"Set window values when I am displayed on my own."

	aWindowPresenter
		title: self windowTitle;
		aboutText: self aboutText
