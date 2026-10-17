--
-- AllBinary Open License Version 1
-- Copyright (c) 2009 AllBinary
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


package body org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package is

   procedure Initialize_Fields (This : in out ActivityFractureInputUtilFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out ActivityFractureInputUtilFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return ActivityFractureInputUtilFactory_Access is
      This : constant ActivityFractureInputUtilFactory_Access := new ActivityFractureInputUtilFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return ActivityFractureUtil_Access is
      SDK_VERSION : Integer;
   begin
        SDK_VERSION := AndroidInfoFactory_Package.getInstance.getVersion;
        if (SDK_VERSION) <= (4) then
            return ActivityFractureUtilAPI1_Package.getInstance;
        elsif (SDK_VERSION) <= (15) then
            return ActivityFractureUtilAPI5_Package.getInstance;
        elsif (SDK_VERSION) <= (16) then
            return ActivityFractureUtilAPI16_Package.getInstance;
        else
            return ActivityFractureUtilAPI19_Package.getInstance;
        end if;
   end getInstance;

   procedure getInstance is
      Java_Result : constant ActivityFractureUtil_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package;


