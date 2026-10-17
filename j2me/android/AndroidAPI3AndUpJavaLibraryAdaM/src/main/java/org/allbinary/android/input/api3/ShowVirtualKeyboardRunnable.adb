--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


package body org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package is

   procedure Initialize_Fields (This : in out ShowVirtualKeyboardRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ShowVirtualKeyboardRunnable'Class; activity_Param : access Activity'Class) is
      activity : Activity_Access := Activity_Access (activity_Param);
   begin
      Initialize_Fields (This);
        This.activity := activity;
   end Initialize;

   function Create (activity_Param : access Activity'Class) return ShowVirtualKeyboardRunnable_Access is
      This : constant ShowVirtualKeyboardRunnable_Access := new ShowVirtualKeyboardRunnable;
   begin
      ShowVirtualKeyboardRunnable_Package.Initialize (This.all, activity_Param);
      return This;
   end Create;

   procedure run (This : in out ShowVirtualKeyboardRunnable) is
      inputMethodManager : InputMethodManager_Access;
      viewCompositeInterface : ViewCompositeInterface_Access;
      view : View_Access;
      commonStrings : CommonStrings_Access;
   begin
        begin
            inputMethodManager := InputMethodManager_Access (This.activity.getSystemService (Context_Package.INPUT_METHOD_SERVICE));
            viewCompositeInterface := ViewCompositeInterface_Access (This.activity);
            if (viewCompositeInterface) = (null) then
                ForcedLogUtil_Package.log (To_Unbounded_String ("Activity Null"), ShowVirtualKeyboardRunnable_Access'(This'Unchecked_Access));
            end if;
            view := viewCompositeInterface.getView;
            inputMethodManager.toggleSoftInputFromWindow (view.getWindowToken, InputMethodManager_Package.SHOW_FORCED, 0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, ShowVirtualKeyboardRunnable_Access'(This'Unchecked_Access), commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.android.input.api3.ShowVirtualKeyboardRunnable_Package;


