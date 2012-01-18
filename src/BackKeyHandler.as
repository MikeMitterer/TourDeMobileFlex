package
{
	import spark.components.ViewNavigator;
	
	import views.SampleListView;
	import views.SampleView;

	public class BackKeyHandler 
	{
		public function BackKeyHandler() {
		}
		
		public static function resetCurrentItem(navigator:ViewNavigator) : void {
			if ((navigator.activeView is SampleListView) || (navigator.activeView is SampleView)) {
				var newItem:SampleItem =  Model.getInstance().findParent(Model.getInstance().currentItem);
				if (newItem != null) {
					Model.getInstance().currentItem = newItem;
				}
			}
			
		}
	}
}