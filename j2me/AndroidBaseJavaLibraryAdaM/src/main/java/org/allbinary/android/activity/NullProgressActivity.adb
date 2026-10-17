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


package body org.allbinary.android.activity.NullProgressActivity_Package is

   procedure Initialize_Fields (This : in out NullProgressActivity'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NullProgressActivity'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NullProgressActivity_Access is
      This : constant NullProgressActivity_Access := new NullProgressActivity;
   begin
      NullProgressActivity_Package.Initialize (This.all);
      return This;
   end Create;


   procedure runOnUiThread (This : in out NullProgressActivity; action_Param : access Runnable_Package.Runnable'Class) is
      action : constant Runnable_Access := Runnable_Access (action_Param);
   begin
        null;
   end runOnUiThread;

   procedure onDismissTitleProgressBar (This : in out NullProgressActivity) is
   begin
        null;
   end onDismissTitleProgressBar;

   procedure onShowTitleProgressBar (This : in out NullProgressActivity; value : Integer; indeterminate : Boolean) is
   begin
        null;
   end onShowTitleProgressBar;

   procedure onTitleProgressBarSetProgress (This : in out NullProgressActivity; value : Integer) is
   begin
        null;
   end onTitleProgressBarSetProgress;

begin
   null;
   NULL_PROGRESS_ACTIVITY := NullProgressActivity_Package.Create;

end org.allbinary.android.activity.NullProgressActivity_Package;


