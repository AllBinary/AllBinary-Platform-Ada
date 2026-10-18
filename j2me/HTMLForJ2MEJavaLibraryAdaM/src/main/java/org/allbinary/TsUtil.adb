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


with javax.microedition.lcdui.Form_Package; use javax.microedition.lcdui.Form_Package;
with javax.microedition.rms.InvalidRecordIDException_Package; use javax.microedition.rms.InvalidRecordIDException_Package;
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;
with javax.microedition.rms.RecordStoreException_Package; use javax.microedition.rms.RecordStoreException_Package;
with javax.microedition.rms.RecordStoreNotOpenException_Package; use javax.microedition.rms.RecordStoreNotOpenException_Package;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;

package body org.allbinary.TsUtil_Package is

   package Form_Package renames Standard.javax.microedition.lcdui.Form_Package;
   package InvalidRecordIDException_Package renames Standard.javax.microedition.rms.InvalidRecordIDException_Package;
   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;
   package RecordStoreException_Package renames Standard.javax.microedition.rms.RecordStoreException_Package;
   package RecordStoreNotOpenException_Package renames Standard.javax.microedition.rms.RecordStoreNotOpenException_Package;
   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   procedure Initialize_Fields (This : in out TsUtil'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TsUtil'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TsUtil_Access is
      This : constant TsUtil_Access := new TsUtil;
   begin
      TsUtil_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return TsUtil_Access is
   begin
        return TsUtil_Package.instance;
   end getInstance;

   function hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) return Integer is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
   begin
        return anyType.hashCode;
   end hashCode;

   --  throws InterruptedException
   procedure waitFor (This : in out TsUtil; any_Param : access Java_Object'Class; timeoutMillis : Long_Long_Integer) is
      any : constant Java_Object_Access := Java_Object_Access (any_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end waitFor;

   --  throws RecordStoreNotOpenException, InvalidRecordIDException, RecordStoreException
   function getRecord (This : in out TsUtil; anyType_Param : access Java_Object'Class; recordId : Integer) return Short_Short_Integer_Array_Access is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      recordStore : RecordStore_Access;
      data : Short_Short_Integer_Array_Access;
   begin
        recordStore := RecordStore_Access (anyType);
        data := null;
        begin  --  synchronized
            data := new Short_Short_Integer_Array'(0 .. (recordStore.getRecordSize (recordId)) - 1 => 0);
            recordStore.getRecord (recordId, data, 0);
        end;
        return (if (data'Length) < (1) then NullUtil_Package.getInstance.NULL_BYTE_ARRAY else data);
   end getRecord;

   function compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Integer is
   begin
        return Java_Compare_To (a, b);
   end compareTo;

   function equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) return Boolean is
   begin
        return Ada.Strings.Equal_Case_Insensitive (To_String (a), To_String (b));
   end equalIgnoreCase;

   function equalsNotstring (This : in out TsUtil; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) return Boolean is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      object2 : constant Java_Object_Access := Java_Object_Access (object2_Param);
   begin
        return anyType.equals (object2);
   end equalsNotstring;

   function toNumberFromChar (This : in out TsUtil; value : Character) return Integer is
   begin
        return Integer (Character'Pos (value));
   end toNumberFromChar;

   function toNumber (This : in out TsUtil; value : Integer) return Integer is
   begin
        return value;
   end toNumber;

   function getByteArray (This : in out TsUtil; string_Id : Unbounded_String) return Short_Short_Integer_Array_Access is
   begin
        return string_Id.getBytes;
   end getByteArray;

   function isItemListener (This : in out TsUtil; owner_Param : access Displayable_Package.Displayable'Class) return Boolean is
      owner : constant Displayable_Access := Displayable_Access (owner_Param);
   begin
        if (owner.all in Form_Package.Form'Class) then
            return True;
        else
            return False;
        end if;
   end isItemListener;

   procedure gc (This : in out TsUtil) is
   begin
        null;
   end gc;

   procedure hashCode (This : in out TsUtil; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Integer := TsUtil'Class (This).hashCode (anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hashCode;

   procedure getRecord (This : in out TsUtil; anyType_Param : access Java_Object'Class; recordId : Integer) is
      Java_Result : constant Short_Short_Integer_Array_Access := TsUtil'Class (This).getRecord (anyType_Param => anyType_Param, recordId => recordId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getRecord;

   procedure compareTo (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) is
      Java_Result : constant Integer := TsUtil'Class (This).compareTo (a => a, b => b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end compareTo;

   procedure equalIgnoreCase (This : in out TsUtil; a : Unbounded_String; b : Unbounded_String) is
      Java_Result : constant Boolean := TsUtil'Class (This).equalIgnoreCase (a => a, b => b);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equalIgnoreCase;

   procedure equalsNotstring (This : in out TsUtil; anyType_Param : access Java_Object'Class; object2_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := TsUtil'Class (This).equalsNotstring (anyType_Param => anyType_Param, object2_Param => object2_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end equalsNotstring;

   procedure toNumberFromChar (This : in out TsUtil; value : Character) is
      Java_Result : constant Integer := TsUtil'Class (This).toNumberFromChar (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toNumberFromChar;

   procedure toNumber (This : in out TsUtil; value : Integer) is
      Java_Result : constant Integer := TsUtil'Class (This).toNumber (value => value);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toNumber;

   procedure getByteArray (This : in out TsUtil; string_Id : Unbounded_String) is
      Java_Result : constant Short_Short_Integer_Array_Access := TsUtil'Class (This).getByteArray (string_Id => string_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getByteArray;

   procedure isItemListener (This : in out TsUtil; owner_Param : access Displayable_Package.Displayable'Class) is
      Java_Result : constant Boolean := TsUtil'Class (This).isItemListener (owner_Param => owner_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isItemListener;

   function hashCode (This : in out TsUtil; Value : Unbounded_String) return Integer is
   begin
      return TsUtil'Class (This).hashCode (Java_Box (Value));
   end hashCode;

   procedure hashCode (This : in out TsUtil; Value : Unbounded_String) is
      Java_Result : constant Integer := TsUtil'Class (This).hashCode (Java_Box (Value));
      pragma Unreferenced (Java_Result);
   begin
      null;
   end hashCode;

begin
   null;
   instance := TsUtil_Package.Create;

end org.allbinary.TsUtil_Package;


