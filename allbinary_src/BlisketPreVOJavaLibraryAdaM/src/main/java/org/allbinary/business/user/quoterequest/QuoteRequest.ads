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
limited with org.allbinary.business.user.quoterequest.QuoteRequest_Package;
package org.allbinary.business.user.quoterequest.QuoteRequest_Package_References is
   type QuoteRequest_Access is access all org.allbinary.business.user.quoterequest.QuoteRequest_Package.QuoteRequest'Class;
   type QuoteRequest_Access_Array is array (Natural range <>) of QuoteRequest_Access;
   type QuoteRequest_Access_Array_Access is access all QuoteRequest_Access_Array;
   type QuoteRequest_Access_Array_Access_Array is array (Natural range <>) of QuoteRequest_Access_Array_Access;
   type QuoteRequest_Access_Array_Access_Array_Access is access all QuoteRequest_Access_Array_Access_Array;
   type QuoteRequest_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequest_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequest_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequest_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequest_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequest_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequest_Access_Array_Object'Class then QuoteRequest_Access_Array_Object'Class (Value.all).Value else null);
   type QuoteRequest_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : QuoteRequest_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : QuoteRequest_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new QuoteRequest_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_QuoteRequest_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return QuoteRequest_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in QuoteRequest_Access_Array_Access_Array_Object'Class then QuoteRequest_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.quoterequest.QuoteRequest_Package_References;

with org.allbinary.business.user.quoterequest.QuoteRequest_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;

package org.allbinary.business.user.quoterequest.QuoteRequest_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package Reference_Types is
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   use type LogUtil_Access;
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   use type LogUtil_Access_Array;
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   use type LogUtil_Access_Array_Access;
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   use type LogUtil_Access_Array_Access_Array;
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   use type LogUtil_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype QuoteRequest_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access;
   function "=" (Left, Right : QuoteRequest_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array;
   function "=" (Left, Right : QuoteRequest_Access_Array) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   function Java_Box (Value : QuoteRequest_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.Java_Box;
   function Java_Unbox_QuoteRequest_Access_Array (Value : access Java_Object'Class) return QuoteRequest_Access_Array_Access renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.Java_Unbox_QuoteRequest_Access_Array;
   subtype QuoteRequest_Access_Array_Access_Array is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   subtype QuoteRequest_Access_Array_Access_Array_Access is org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.QuoteRequest_Access_Array_Access_Array_Access;
   function "=" (Left, Right : QuoteRequest_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References."=";
   function Java_Box (Value : QuoteRequest_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.Java_Box;
   function Java_Unbox_QuoteRequest_Access_Array_Access_Array (Value : access Java_Object'Class) return QuoteRequest_Access_Array_Access_Array_Access renames org.allbinary.business.user.quoterequest.QuoteRequest_Package_References.Java_Unbox_QuoteRequest_Access_Array_Access_Array;

   type QuoteRequest is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      id : Unbounded_String;
      userName : Unbounded_String;
      projectInfo : Unbounded_String;
      userComments : Unbounded_String;
      budget : Unbounded_String;
      timeFrame : Unbounded_String;
      comments : Unbounded_String;
   end record;

   procedure Initialize (This : in out QuoteRequest'Class; userName : Unbounded_String; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);
   function Create (userName : Unbounded_String; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class) return QuoteRequest_Access;
   procedure Initialize (This : in out QuoteRequest'Class; hashMap_Param : access HashMap_Package.HashMap'Class);
   function Create (hashMap_Param : access HashMap_Package.HashMap'Class) return QuoteRequest_Access;
   function isValid (This : in out QuoteRequest) return Boolean;
   function validationInfo (This : in out QuoteRequest) return Unbounded_String;
   function toVector (This : in out QuoteRequest) return BasicArrayList_Access;
   function toHashMap (This : in out QuoteRequest) return HashMap_Access;
   procedure setUserName (This : in out QuoteRequest; value : Unbounded_String);
   procedure setProjectInfo (This : in out QuoteRequest; value : Unbounded_String);
   procedure setUserComments (This : in out QuoteRequest; value : Unbounded_String);
   procedure setBudget (This : in out QuoteRequest; value : Unbounded_String);
   procedure setTimeFrame (This : in out QuoteRequest; value : Unbounded_String);
   procedure setComments (This : in out QuoteRequest; value : Unbounded_String);
   function getUserName (This : in out QuoteRequest) return Unbounded_String;
   function getProjectInfo (This : in out QuoteRequest) return Unbounded_String;
   function getUserComments (This : in out QuoteRequest) return Unbounded_String;
   function getBudget (This : in out QuoteRequest) return Unbounded_String;
   function getTimeFrame (This : in out QuoteRequest) return Unbounded_String;
   function getComments (This : in out QuoteRequest) return Unbounded_String;

end org.allbinary.business.user.quoterequest.QuoteRequest_Package;


