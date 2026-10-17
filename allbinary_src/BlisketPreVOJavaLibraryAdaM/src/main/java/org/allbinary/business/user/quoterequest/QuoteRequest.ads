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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.Calendar_Package; use java.util.Calendar_Package;
--  with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.quoterequest.QuoteRequestData_Package; use org.allbinary.business.quoterequest.QuoteRequestData_Package;
with org.allbinary.business.user.UserData_Package; use org.allbinary.business.user.UserData_Package;
with org.allbinary.data.generator.QuoteRequestIdGenerator_Package; use org.allbinary.data.generator.QuoteRequestIdGenerator_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.sql.AbSqlData_Package; use org.allbinary.logic.communication.sql.AbSqlData_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.business.user.quoterequest.QuoteRequest_Package is

   package Calendar_Package renames Standard.java.util.Calendar_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package QuoteRequestData_Package renames Standard.org.allbinary.business.quoterequest.QuoteRequestData_Package;
   package UserData_Package renames Standard.org.allbinary.business.user.UserData_Package;
   package QuoteRequestIdGenerator_Package renames Standard.org.allbinary.data.generator.QuoteRequestIdGenerator_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package AbSqlData_Package renames Standard.org.allbinary.logic.communication.sql.AbSqlData_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;

   type QuoteRequest is tagged;
   type QuoteRequest_Access is access all QuoteRequest'Class;
   type QuoteRequest_Access_Array is array (Natural range <>) of QuoteRequest_Access;
   type QuoteRequest_Access_Array_Access is access all QuoteRequest_Access_Array;

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

   procedure Initialize (This : in out QuoteRequest'Class; userName : Unbounded_String; request_Param : access HttpServletRequest'Class);
   function Create (userName : Unbounded_String; request_Param : access HttpServletRequest'Class) return QuoteRequest_Access;
   procedure Initialize (This : in out QuoteRequest'Class; hashMap_Param : access HashMap'Class);
   function Create (hashMap_Param : access HashMap'Class) return QuoteRequest_Access;
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


