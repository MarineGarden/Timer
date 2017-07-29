package  {
	
	import flash.utils.Timer;
	import flash.events.TimerEvent;
	
	public class CounterTimer extends Timer {
		
		private var counter:int = 0;

		public function CounterTimer(duration:Number, repeatTimes:int) {
			// constructor code
			super(duration, repeatTimes);
			this.addEventListener(TimerEvent.TIMER, countRepeat);
		}
		
		private function countRepeat(event:TimerEvent):void {
			counter++;
		}
		
		public function get count():int {
			return counter;
		}

	}
	
}
