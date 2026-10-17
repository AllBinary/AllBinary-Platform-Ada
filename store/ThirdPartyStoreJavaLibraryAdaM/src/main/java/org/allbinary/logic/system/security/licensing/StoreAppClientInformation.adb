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


package body org.allbinary.logic.system.security.licensing.StoreAppClientInformation_Package is

   procedure Initialize_Fields (This : in out StoreAppClientInformation'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out StoreAppClientInformation'Class; name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String; longArrayIdentifier : Long_Long_Integer_Array_Access) is
   begin
        AbeClientInformation_Package.Initialize (This, name, version, specialName, shortName);
        Initialize_Fields (This);
        This.longArrayIdentifier := longArrayIdentifier;
   end Initialize;

   function Create (name : Unbounded_String; version : Unbounded_String; specialName : Unbounded_String; shortName : Unbounded_String; longArrayIdentifier : Long_Long_Integer_Array_Access) return StoreAppClientInformation_Access is
      This : constant StoreAppClientInformation_Access := new StoreAppClientInformation;
   begin
      StoreAppClientInformation_Package.Initialize (This.all, name, version, specialName, shortName, longArrayIdentifier);
      return This;
   end Create;

   function getLongArrayIdentifier (This : in out StoreAppClientInformation) return Long_Long_Integer_Array_Access is
   begin
        return This.longArrayIdentifier;
   end getLongArrayIdentifier;

end org.allbinary.logic.system.security.licensing.StoreAppClientInformation_Package;


