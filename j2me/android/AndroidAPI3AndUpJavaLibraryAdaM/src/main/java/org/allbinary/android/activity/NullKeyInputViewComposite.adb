-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.android.activity.NullKeyInputViewComposite_Package is

   procedure Initialize_Fields (This : in out NullKeyInputViewComposite'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullKeyInputViewComposite'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullKeyInputViewComposite_Access is
      This : constant NullKeyInputViewComposite_Access := new NullKeyInputViewComposite;
   begin
      NullKeyInputViewComposite_Package.Initialize (This.all);
      return This;
   end Create;


   procedure setKeyInputView (This : in out NullKeyInputViewComposite; keyInputView_Param : access View_Package.View'Class) is
      keyInputView : constant View_Access := View_Access (keyInputView_Param);
   begin
        null;
   end setKeyInputView;

   function getRootView (This : in out NullKeyInputViewComposite) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getRootView;

   function getView (This : in out NullKeyInputViewComposite) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getView;

   procedure runOnUiThread (This : in out NullKeyInputViewComposite; action_Param : access Runnable_Package.Runnable'Class) is
      action : constant Runnable_Access := Runnable_Access (action_Param);
   begin
        null;
   end runOnUiThread;

begin
   null;
   NULL_KEY_INPUT_VIEW_COMPOSITE := NullKeyInputViewComposite_Package.Create;

end org.allbinary.android.activity.NullKeyInputViewComposite_Package;


