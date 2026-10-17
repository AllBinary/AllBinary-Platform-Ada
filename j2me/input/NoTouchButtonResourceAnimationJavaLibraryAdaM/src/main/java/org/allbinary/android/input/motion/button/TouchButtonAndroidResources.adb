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


package body org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package is

   procedure Initialize_Fields (This : in out TouchButtonAndroidResources'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonAndroidResources'Class) is
   begin
      Init_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonAndroidResources_Access is
      This : constant TouchButtonAndroidResources_Access := new TouchButtonAndroidResources;
   begin
      TouchButtonAndroidResources_Package.Initialize (This.all);
      return This;
   end Create;


   procedure init (This : in out TouchButtonAndroidResources) is
   begin
        null;
   end init;

end org.allbinary.android.input.motion.button.TouchButtonAndroidResources_Package;


