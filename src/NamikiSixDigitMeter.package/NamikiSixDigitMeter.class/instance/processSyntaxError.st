private
processSyntaxError
	"Decide what to do when a syntax error is signalled.
	Currently, just set the default interval again."

	Transcript show: 'Syntax error received'; cr.

	"Wait for 2 seconds to let things settle down"
	(Delay forSeconds: 2) wait.

	self setInterval.