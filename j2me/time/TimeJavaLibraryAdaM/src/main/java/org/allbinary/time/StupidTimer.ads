--  Generated Code Do Not Modify

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with org.allbinary.logic.NullUtil_Package; use org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.PreLogUtil_Package; use org.allbinary.logic.communication.log.PreLogUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.logic.util.visitor.Visitor_Package; use org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.thread.ThreadObjectUtil_Package; use org.allbinary.thread.ThreadObjectUtil_Package;

package org.allbinary.time.StupidTimer_Package is

   package NullUtil_Package renames org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package PreLogUtil_Package renames org.allbinary.logic.communication.log.PreLogUtil_Package;
   package StringMaker_Package renames org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames org.allbinary.logic.string_Id.StringUtil_Package;
   package Visitor_Package renames org.allbinary.logic.util.visitor.Visitor_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;
   package ThreadObjectUtil_Package renames org.allbinary.thread.ThreadObjectUtil_Package;

   type StupidTimer is tagged;
   type StupidTimer_Access is access all StupidTimer'Class;
   type StupidTimer_Access_Array is array (Natural range <>) of StupidTimer_Access;
   type StupidTimer_Access_Array_Access is access all StupidTimer_Access_Array;

   type StupidTimer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      nullUtil : NullUtil_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
   end record;

   procedure Initialize (This : in out StupidTimer'Class);
   function Create return StupidTimer_Access;
   function visitBool (This : in out StupidTimer; visitorInterface : Visitor_Access) return Boolean;
   procedure visitBool (This : in out StupidTimer; visitorInterface : Visitor_Access);
   procedure visit (This : in out StupidTimer; visitorInterface : Visitor_Access; timeDelayHelper : TimeDelayHelper_Access);
   procedure stopWaiting (This : in out StupidTimer);

end org.allbinary.time.StupidTimer_Package;


