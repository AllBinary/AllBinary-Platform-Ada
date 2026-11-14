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

with AllBinary_Java;
limited with org.allbinary.globals.GLOBALS2_Package;
package org.allbinary.globals.GLOBALS2_Package_References is
   type GLOBALS2_Access is access all org.allbinary.globals.GLOBALS2_Package.GLOBALS2'Class;
   type GLOBALS2_Access_Array is array (Natural range <>) of GLOBALS2_Access;
   type GLOBALS2_Access_Array_Access is access all GLOBALS2_Access_Array;
   type GLOBALS2_Access_Array_Access_Array is array (Natural range <>) of GLOBALS2_Access_Array_Access;
   type GLOBALS2_Access_Array_Access_Array_Access is access all GLOBALS2_Access_Array_Access_Array;
   type GLOBALS2_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GLOBALS2_Access_Array_Access;
   end record;
   function Java_Box (Value : GLOBALS2_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GLOBALS2_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GLOBALS2_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GLOBALS2_Access_Array_Access is (if Value /= null and then Value.all in GLOBALS2_Access_Array_Object'Class then GLOBALS2_Access_Array_Object'Class (Value.all).Value else null);
   type GLOBALS2_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : GLOBALS2_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : GLOBALS2_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new GLOBALS2_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_GLOBALS2_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return GLOBALS2_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in GLOBALS2_Access_Array_Access_Array_Object'Class then GLOBALS2_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.globals.GLOBALS2_Package_References;

with org.allbinary.globals.GLOBALS2_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.globals.GLOBALS2_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype GLOBALS2_Access is org.allbinary.globals.GLOBALS2_Package_References.GLOBALS2_Access;
   function "=" (Left, Right : GLOBALS2_Access) return Boolean renames org.allbinary.globals.GLOBALS2_Package_References."=";
   subtype GLOBALS2_Access_Array is org.allbinary.globals.GLOBALS2_Package_References.GLOBALS2_Access_Array;
   function "=" (Left, Right : GLOBALS2_Access_Array) return Boolean renames org.allbinary.globals.GLOBALS2_Package_References."=";
   subtype GLOBALS2_Access_Array_Access is org.allbinary.globals.GLOBALS2_Package_References.GLOBALS2_Access_Array_Access;
   function "=" (Left, Right : GLOBALS2_Access_Array_Access) return Boolean renames org.allbinary.globals.GLOBALS2_Package_References."=";
   function Java_Box (Value : GLOBALS2_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.GLOBALS2_Package_References.Java_Box;
   function Java_Unbox_GLOBALS2_Access_Array (Value : access Java_Object'Class) return GLOBALS2_Access_Array_Access renames org.allbinary.globals.GLOBALS2_Package_References.Java_Unbox_GLOBALS2_Access_Array;
   subtype GLOBALS2_Access_Array_Access_Array is org.allbinary.globals.GLOBALS2_Package_References.GLOBALS2_Access_Array_Access_Array;
   function "=" (Left, Right : GLOBALS2_Access_Array_Access_Array) return Boolean renames org.allbinary.globals.GLOBALS2_Package_References."=";
   subtype GLOBALS2_Access_Array_Access_Array_Access is org.allbinary.globals.GLOBALS2_Package_References.GLOBALS2_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GLOBALS2_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.globals.GLOBALS2_Package_References."=";
   function Java_Box (Value : GLOBALS2_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.globals.GLOBALS2_Package_References.Java_Box;
   function Java_Unbox_GLOBALS2_Access_Array_Access_Array (Value : access Java_Object'Class) return GLOBALS2_Access_Array_Access_Array_Access renames org.allbinary.globals.GLOBALS2_Package_References.Java_Unbox_GLOBALS2_Access_Array_Access_Array;

   type GLOBALS2 is new Java_Object with null record;
   GETCURRENTLOCATION : Unbounded_String;
   GETCURRENTHOMELOCATION : Unbounded_String;
   GENERATEALLSTORES : Unbounded_String;
   LICENSEAGREEMENT : Unbounded_String;
   CREATEDATABASES : Unbounded_String;
   VIEWNAME : Unbounded_String;
   SETSHIPPINGTYPE : Unbounded_String;
   VIEWSUMMARY : Unbounded_String;
   SET : Unbounded_String;
   SELECT_Id : Unbounded_String;
   SELECTNEW : Unbounded_String;
   SELECTEXISTING : Unbounded_String;
   PROCESS : Unbounded_String;
   LOGINSUCCESS : Unbounded_String;
   LOGINFAILED : Unbounded_String;
   NONE : Unbounded_String;
   TOP : Unbounded_String;
   LEFT : Unbounded_String;
   RIGHT : Unbounded_String;
   BACK : Unbounded_String;
   BOTTOM : Unbounded_String;
   FRONT : Unbounded_String;
   AUTHORIZE : Unbounded_String;
   AUTHORIZEANDEVALBODY : Unbounded_String;
   AUTHORIZEANDEVALBODYONERROR : Unbounded_String;
   AUTHORIZEORDEREVALBODYONERROR : Unbounded_String;
   AUTHORIZEFORMEVALBODYONERROR : Unbounded_String;
   AUTHORIZEORDERANDSKIPBODY : Unbounded_String;
   AUTHORIZEORDERANDEVALBODY : Unbounded_String;
   EDITPRICING : Unbounded_String;
   UPDATEPRICING : Unbounded_String;
   SETPAYMENTMETHOD : Unbounded_String;
   BACKUP : Unbounded_String;
   RESTORE : Unbounded_String;
   SUMMARY : Unbounded_String;
   DESCRIPTION : Unbounded_String;
   IMG : Unbounded_String;
   HREF : Unbounded_String;
   KEYWORD : Unbounded_String;
   TYPE_Id : Unbounded_String;
   DATA : Unbounded_String;
   NUM : Unbounded_String;
   PRICE : Unbounded_String;
   REGISTER : Unbounded_String;
   CHECKOUT : Unbounded_String;
   ADMINCOMMAND : Unbounded_String;
   PROCESSBODYIFNOTAUTHENTICATED : Unbounded_String;
   PROCESSBODYIFAUTHENTICATED : Unbounded_String;
   PROCESSTRANSACTION : Unbounded_String;
   NEWPASSWORD : Unbounded_String;
   CHANGEPASSWORD : Unbounded_String;
   JDBCDRIVER : Unbounded_String;
   WEBAPPPATH : Unbounded_String;
   AMOUNTVALUE : Unbounded_String;
   GETORDERIDFROMSESSION : Unbounded_String;
   SETUPPAYMENTMETHODS : Unbounded_String;
   CANCELSTOREFRONT : Unbounded_String;
   ADJUST : Unbounded_String;
   ISASUBSET : Unbounded_String;
   NOTASUBSET : Unbounded_String;
   GENERATE : Unbounded_String;
   VIEW : Unbounded_String;
   EDIT : Unbounded_String;
   NEW_Id : Unbounded_String;
   SEARCH : Unbounded_String;

   procedure Initialize (This : in out GLOBALS2'Class);
   function Create return GLOBALS2_Access;

end org.allbinary.globals.GLOBALS2_Package;


