package anifire.studio.models.tutorial
{
	import anifire.util.UtilDict;
	
	public class WithoutMotionTutorial extends TutorialModel
	{
		 
		
		public function WithoutMotionTutorial()
		{
			super();
		}
		
		override protected function createTutorial() : void
		{
			var _loc2_:TutorialStepModel = null;
			tutorialId = "without_motion";
			totalUserStep = 14;
			var _loc1_:Function = UtilDict.toDisplay;
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "start";
			_loc2_.title = "Tutorial: Getting Started";
			_loc2_.message = "Welcome to the GoAnimate Video Maker. We have prepared a quick interactive tutorial to help you get started.\n\nIt should take a couple of minutes to complete and will give you an overview of the basic features in our Video Maker.";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_STUDIO_CENTER;
			_loc2_.expectedAction = TutorialStepModel.EXPECT_TUTORIAL_NEXT;
			_loc2_.proceedButtonText = "Start Tutorial";
			_loc2_.userStepIndex = TutorialStepModel.STEP_INDEX_FIRST;
			_loc2_.helpText = "You can restart the tutorial using the menu in the top right.";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "prepare_start_scene";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "scene_editor_change";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "change_common_theme";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "theme_change_common";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "change_bg_tab";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "theme_bg_panel_select";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "add_com_bg";
			_loc2_.title = "Choose Template";
			_loc2_.message = "Templates are listed here. Select one and drag it to the stage on the right to replace the current one.";
			_loc2_.componentId = "theme_bg_explorer";
			_loc2_.expectedAction = "add_com_bg";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.allowDragForwarding = true;
			_loc2_.arrowVisible = true;
			_loc2_.waitForNext = true;
			_loc2_.offsetX = -10;
			_loc2_.offsetY = 100;
			_loc2_.userStepIndex = 1;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_char_tab";
			_loc2_.title = "Browse Characters";
			_loc2_.message = "Click on this tab to browse characters";
			_loc2_.componentId = "theme_char_tab";
			_loc2_.expectedAction = "theme_char_panel_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.userStepIndex = 2;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "add_char";
			_loc2_.title = "Add a Character";
			_loc2_.message = "Drag a character to the stage on the right. It will be added to your scene.";
			_loc2_.componentId = "theme_char_explorer";
			_loc2_.expectedAction = "add_char";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.allowDragForwarding = true;
			_loc2_.arrowVisible = true;
			_loc2_.offsetY = 100;
			_loc2_.userStepIndex = 3;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_char";
			_loc2_.title = "Control the Character";
			_loc2_.message = "Click on the character to reveal additional options. Notice the character settings panel sliding out from the left.";
			_loc2_.componentId = "tutorial_char";
			_loc2_.expectedAction = "tutorial_char_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 20;
			_loc2_.userStepIndex = 4;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "asset_control_bar_show";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "asset_control_bar_show";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "asset_control_bar";
			_loc2_.title = "Control Bar";
			_loc2_.message = "These icons allow you to flip your character and move it backward and forward in your scene.\n\nClick on the flip icon to make your character face the other way.";
			_loc2_.componentId = "asset_control_bar_flip";
			_loc2_.highlightComponents = ["tutorial_char"];
			_loc2_.expectedAction = "asset_flip";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.waitForNext = true;
			_loc2_.userStepIndex = 5;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "change_action";
			_loc2_.title = "Make the Character Act";
			_loc2_.message = "There are multiple animated actions available for each character.\n\nThe actions are divided into categories, which are listed on the left. Many of the actions have background elements, props and even other characters built-in!\n\nJust click one and it will be applied automatically.";
			_loc2_.componentId = "action_explorer";
			_loc2_.expectedAction = "action_update";
			_loc2_.waitForNext = true;
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 100;
			_loc2_.userStepIndex = 6;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_voice_tab";
			_loc2_.title = "Make your Character Speak";
			_loc2_.message = "There are four ways to add voice to your character. Record directly into GoAnimate using an ordinary microphone or headset, upload a file, retrieve an already uploaded file or use our text-to-speech function.\n\nClick on the Voice tab";
			_loc2_.componentId = "voice_tab";
			_loc2_.expectedAction = "voice_tab_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.userStepIndex = 7;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "tts";
			_loc2_.title = "Testing a Line";
			_loc2_.message = "Mic recording and text-to-speech allow you to easily assign a voice. Try one of these two options and click on the \"ADD VOICE\" button to assign the voice to your character.";
			_loc2_.componentId = "dialog_panel";
			_loc2_.expectedAction = "dialog_panel_popup";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 50;
			_loc2_.userStepIndex = 8;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "find_scene1";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "find_scene1";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "add_scene";
			_loc2_.title = "Move on to the Next Scene";
			_loc2_.message = "Characters can only perform one action and speak one line per scene. Click the \"+\" sign to keep things moving along. The new scene will automatically match the previous scene, so you pick up EXACTLY where you left off.\n\nClick here to add a second scene";
			_loc2_.componentId = "timeline_add_scene";
			_loc2_.expectedAction = "scene_add";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.userStepIndex = 9;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "wait_add_scene";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "scene_editor_change";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "find_char";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "find_char";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_char2a";
			_loc2_.title = "Make Your Character Act";
			_loc2_.message = "Let???s now make your character do something different in scene 2 compared to scene 1.\n\nClick on the character";
			_loc2_.componentId = "tutorial_char";
			_loc2_.expectedAction = "tutorial_char_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 20;
			_loc2_.userStepIndex = 10;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "wait_tray_open";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "tray_open";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "change_action2a";
			_loc2_.title = "Update the Action";
			_loc2_.message = "Just click on an action and it will be applied automatically.";
			_loc2_.componentId = "action_explorer";
			_loc2_.expectedAction = "action_update";
			_loc2_.waitForNext = true;
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 100;
			_loc2_.userStepIndex = 11;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_previous_scene";
			_loc2_.title = "Modify Previous Scenes";
			_loc2_.message = "You can always modify the scenes you already created.\n\nClick on scene 1 in the timeline to select it and modify its content";
			_loc2_.componentId = "scene1";
			_loc2_.expectedAction = "scene1_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.userStepIndex = 12;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "wait_scene_change";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "scene_editor_change";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "find_char2";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "find_char";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "select_char3";
			_loc2_.title = "Select Your Character";
			_loc2_.message = "Let???s update the action the character is performing in this scene.\n\nClick on the character";
			_loc2_.componentId = "tutorial_char";
			_loc2_.expectedAction = "tutorial_char_select";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 20;
			_loc2_.userStepIndex = 13;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "wait_tray_open";
			_loc2_.isPreparation = true;
			_loc2_.expectedAction = "tray_open";
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "update_action";
			_loc2_.title = "Update the Action";
			_loc2_.message = "Click on an action. Don???t hesitate to select different categories in the left column to preview and try many different actions.";
			_loc2_.componentId = "action_explorer";
			_loc2_.expectedAction = "action_update";
			_loc2_.waitForNext = true;
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_COMP_RIGHT;
			_loc2_.offsetY = 100;
			_loc2_.userStepIndex = 14;
			steps.push(_loc2_);
			_loc2_ = new TutorialStepModel();
			_loc2_.stepId = "preview";
			_loc2_.title = "Tutorial Completed";
			_loc2_.message = "That\'s the basics covered. Use the \"Preview\" button to view your video. Learn more at our Help Center.";
			_loc2_.expectedAction = "toolbar_preview";
			_loc2_.infoPosition = TutorialStepModel.INFO_PLACEMENT_STUDIO_CENTER;
			_loc2_.proceedButtonText = "Preview Video";
			_loc2_.userStepIndex = TutorialStepModel.STEP_INDEX_LAST;
			_loc2_.helpText = "You can restart the tutorial at anytime using the ???GEAR??? icon in the top right.";
			steps.push(_loc2_);
		}
	}
}
