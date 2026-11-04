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


with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package; use org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package; use org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.system.security.licensing.LicenseType_Package_References;
with org.allbinary.logic.system.security.licensing.LicenseType_Package;
with org.allbinary.logic.system.security.licensing.LicenseTypeFactory_Package;

package body org.allbinary.logic.system.security.licensing.AbeNoLicense_Package is

   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype LicenseType_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access;
   function "=" (Left, Right : LicenseType_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseType_Package_References."=";
   subtype LicenseType_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array;
   function "=" (Left, Right : LicenseType_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseType_Package_References."=";
   subtype LicenseType_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access;
   function "=" (Left, Right : LicenseType_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseType_Package_References."=";
   subtype LicenseType_Access_Array_Access_Array is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array;
   function "=" (Left, Right : LicenseType_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseType_Package_References."=";
   subtype LicenseType_Access_Array_Access_Array_Access is org.allbinary.logic.system.security.licensing.LicenseType_Package_References.LicenseType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LicenseType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.security.licensing.LicenseType_Package_References."=";
   procedure Initialize_Fields (This : in out AbeNoLicense'Class) is
   begin
      null;
      This.serverVector := BasicArrayList_Access (BasicArrayListD_Package.Create);
   end Initialize_Fields;


   procedure Initialize (This : in out AbeNoLicense'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return AbeNoLicense_Access is
      This : constant AbeNoLicense_Access := new AbeNoLicense;
   begin
      AbeNoLicense_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return AbeNoLicense_Access is
   begin
        return AbeNoLicense_Access (AbeNoLicense_Package.abeNoLicense_Var);
   end getInstance;

   function hasKey (This : in out AbeNoLicense) return Boolean is
   begin
        return False;
   end hasKey;

   function getKey (This : in out AbeNoLicense; keyName : Unbounded_String) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getKey;

   function getLicenseId (This : in out AbeNoLicense) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getLicenseId;

   function getSpecial (This : in out AbeNoLicense) return Unbounded_String is
   begin
        return StringUtil_Package.getInstance.EMPTY_STRING;
   end getSpecial;

   function getServers (This : in out AbeNoLicense) return BasicArrayList_Access is
   begin
        return This.serverVector;
   end getServers;

   function isValid (This : in out AbeNoLicense) return Boolean is
   begin
        return False;
   end isValid;

   function getLicenseType (This : in out AbeNoLicense) return LicenseType_Access is
   begin
        return LicenseType_Access (LicenseTypeFactory_Package.getInstance.UNKNOWN);
   end getLicenseType;

   procedure getKey (This : in out AbeNoLicense; keyName : Unbounded_String) is
      Java_Result : constant Unbounded_String := AbeNoLicense'Class (This).getKey (keyName => keyName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getKey;

begin
   null;
   abeNoLicense_Var := AbeNoLicense_Package.Create;

end org.allbinary.logic.system.security.licensing.AbeNoLicense_Package;


