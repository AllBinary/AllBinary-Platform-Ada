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


with org.allbinary.android.AndroidInfoFactory_Package; use org.allbinary.android.AndroidInfoFactory_Package;
with org.allbinary.android.api1.ActivityFractureUtilAPI1_Package; use org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
with org.allbinary.android.api16.ActivityFractureUtilAPI16_Package; use org.allbinary.android.api16.ActivityFractureUtilAPI16_Package;
with org.allbinary.android.api19.ActivityFractureUtilAPI19_Package; use org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;
with org.allbinary.android.api5.ActivityFractureUtilAPI5_Package; use org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;

package body org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package is

   package AndroidInfoFactory_Package renames Standard.org.allbinary.android.AndroidInfoFactory_Package;
   package ActivityFractureUtilAPI1_Package renames Standard.org.allbinary.android.api1.ActivityFractureUtilAPI1_Package;
   package ActivityFractureUtilAPI16_Package renames Standard.org.allbinary.android.api16.ActivityFractureUtilAPI16_Package;
   package ActivityFractureUtilAPI19_Package renames Standard.org.allbinary.android.api19.ActivityFractureUtilAPI19_Package;
   package ActivityFractureUtilAPI5_Package renames Standard.org.allbinary.android.api5.ActivityFractureUtilAPI5_Package;
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
      ActivityFractureInputUtilFactory_Package.Initialize (This.all);
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

end org.allbinary.android.input.motion.ActivityFractureInputUtilFactory_Package;


