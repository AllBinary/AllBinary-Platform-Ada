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


with org.allbinary.thread.ABRunnable_Package; use org.allbinary.thread.ABRunnable_Package;
with org.allbinary.thread.ABRunnable_Package_References;
with org.allbinary.thread.NullABRunnable_Package; use org.allbinary.thread.NullABRunnable_Package;
with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package; use org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;
with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References;
with org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.java.character_Id.CharacterSet_Package;
with org.allbinary.logic.system.security.licensing.ClientInformation_Package;
with org.allbinary.logic.system.security.licensing.ClientInformationFactory_Package;
with org.allbinary.game.midlet.DemoSetup_Package;
with org.allbinary.logic.system.os.GenericOperatingSystem_Package;
with org.allbinary.game.midlet.LicenseLoadingType_Package;
with org.allbinary.game.midlet.LicensedDemoSetupFactory_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.game.midlet.SpecialDemoGameMidlet_Package;

package body org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package is

   package NullABRunnable_Package renames Standard.org.allbinary.thread.NullABRunnable_Package;
   subtype ABRunnable_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access;
   function "=" (Left, Right : ABRunnable_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype ABRunnable_Access_Array_Access_Array_Access is org.allbinary.thread.ABRunnable_Package_References.ABRunnable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABRunnable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thread.ABRunnable_Package_References."=";
   subtype SpecialDemoGameMidlet_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access_Array) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   subtype SpecialDemoGameMidlet_Access_Array_Access_Array_Access is org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References.SpecialDemoGameMidlet_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SpecialDemoGameMidlet_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.midlet.SpecialDemoGameMidlet_Package_References."=";
   procedure Initialize_Fields (This : in out LicenseCheckRunnableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out LicenseCheckRunnableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return LicenseCheckRunnableFactory_Access is
      This : constant LicenseCheckRunnableFactory_Access := new LicenseCheckRunnableFactory;
   begin
      LicenseCheckRunnableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet_Param : access SpecialDemoGameMidlet_Package.SpecialDemoGameMidlet'Class) return ABRunnable_Access is
      specialDemoGameMidlet : constant SpecialDemoGameMidlet_Access := SpecialDemoGameMidlet_Access (specialDemoGameMidlet_Param);
   begin
        return ABRunnable_Access (NullABRunnable_Package.getInstance);
   end getInstance;

   procedure getInstance (This : in out LicenseCheckRunnableFactory; specialDemoGameMidlet_Param : access SpecialDemoGameMidlet_Package.SpecialDemoGameMidlet'Class) is
      Java_Result : constant ABRunnable_Access := LicenseCheckRunnableFactory'Class (This).getInstance (specialDemoGameMidlet_Param => specialDemoGameMidlet_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.midlet.LicenseCheckRunnableFactory_Package;


