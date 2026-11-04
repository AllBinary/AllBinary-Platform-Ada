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


with android.view.View_Package; use android.view.View_Package;
with org.allbinary.android.activity.KeyInputViewCompositeInterface_Package;

package body org.allbinary.android.activity.NullKeyInputViewComposite_Package is

   subtype View_Access is android.view.View_Package_References.View_Access;
   function "=" (Left, Right : View_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array is android.view.View_Package_References.View_Access_Array;
   function "=" (Left, Right : View_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array is android.view.View_Package_References.View_Access_Array_Access_Array;
   function "=" (Left, Right : View_Access_Array_Access_Array) return Boolean renames android.view.View_Package_References."=";
   subtype View_Access_Array_Access_Array_Access is android.view.View_Package_References.View_Access_Array_Access_Array_Access;
   function "=" (Left, Right : View_Access_Array_Access_Array_Access) return Boolean renames android.view.View_Package_References."=";
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
        return null;
   end getRootView;

   function getView (This : in out NullKeyInputViewComposite) return View_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
        return null;
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


