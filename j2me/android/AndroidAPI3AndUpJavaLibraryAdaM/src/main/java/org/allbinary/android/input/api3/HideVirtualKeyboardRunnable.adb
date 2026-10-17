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


package body org.allbinary.android.input.api3.HideVirtualKeyboardRunnable_Package is

   procedure Initialize_Fields (This : in out HideVirtualKeyboardRunnable'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out HideVirtualKeyboardRunnable'Class; activity : Activity_Access) is
   begin
      Initialize_Fields (This);
        This.activity := activity;
   end Initialize;

   function Create (activity : Activity_Access) return HideVirtualKeyboardRunnable_Access is
      This : constant HideVirtualKeyboardRunnable_Access := new HideVirtualKeyboardRunnable;
   begin
      Initialize (This.all, activity);
      return This;
   end Create;

   procedure run (This : in out HideVirtualKeyboardRunnable) is
      commonStrings : CommonStrings_Access;
      inputMethodManager : InputMethodManager_Access;
      viewCompositeInterface : ViewCompositeInterface_Access;
      view : View_Access;
      token : IBinder_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        begin
            inputMethodManager := InputMethodManager_Access (This.activity.getSystemService (Context_Package.INPUT_METHOD_SERVICE));
            viewCompositeInterface := ViewCompositeInterface_Access (This.activity);
            if (viewCompositeInterface) = (null) then
                ForcedLogUtil_Package.log (To_Unbounded_String ("Activity Null"), This'Unchecked_Access);
            end if;
            view := viewCompositeInterface.getView;
            if (view.getWindowToken) = (null) then
                This.logUtil.putF (To_Unbounded_String ("Unable to hide virtual keyboard as window token is null - This usually happens during loading when the view is not attached to a window"), This'Unchecked_Access, commonStrings.RUN);
                return;
            end if;
            token := view.getWindowToken;
            inputMethodManager.hideSoftInputFromWindow (token, 0);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            This.logUtil.put (commonStrings.EXCEPTION_Id, This'Unchecked_Access, commonStrings.RUN, e);
                end;
        end;
   end run;

end org.allbinary.android.input.api3.HideVirtualKeyboardRunnable_Package;


