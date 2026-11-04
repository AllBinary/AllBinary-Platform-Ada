--  Generated Code Do Not Modify

limited with org.allbinary.time.StupidTimer_Package;
package org.allbinary.time.StupidTimer_Package_References is
   type StupidTimer_Access is access all org.allbinary.time.StupidTimer_Package.StupidTimer'Class;
   type StupidTimer_Access_Array is array (Natural range <>) of StupidTimer_Access;
   type StupidTimer_Access_Array_Access is access all StupidTimer_Access_Array;
   type StupidTimer_Access_Array_Access_Array is array (Natural range <>) of StupidTimer_Access_Array_Access;
   type StupidTimer_Access_Array_Access_Array_Access is access all StupidTimer_Access_Array_Access_Array;
end org.allbinary.time.StupidTimer_Package_References;

with org.allbinary.time.StupidTimer_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.NullUtil_Package;
with org.allbinary.logic.NullUtil_Package_References;
limited with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
limited with org.allbinary.logic.util.visitor.Visitor_Package;
with org.allbinary.logic.util.visitor.Visitor_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.thread.ThreadObjectUtil_Package;
with org.allbinary.thread.ThreadObjectUtil_Package_References;
limited with org.allbinary.time.TimeDelayHelper_Package;
with org.allbinary.time.TimeDelayHelper_Package_References;

package org.allbinary.time.StupidTimer_Package is

   package NullUtil_Package renames Standard.org.allbinary.logic.NullUtil_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package Visitor_Package renames Standard.org.allbinary.logic.util.visitor.Visitor_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ThreadObjectUtil_Package renames Standard.org.allbinary.thread.ThreadObjectUtil_Package;
   package Reference_Types is
   subtype NullUtil_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access;
   use type NullUtil_Access;
   subtype NullUtil_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array;
   use type NullUtil_Access_Array;
   subtype NullUtil_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access;
   use type NullUtil_Access_Array_Access;
   subtype NullUtil_Access_Array_Access_Array is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array;
   use type NullUtil_Access_Array_Access_Array;
   subtype NullUtil_Access_Array_Access_Array_Access is org.allbinary.logic.NullUtil_Package_References.NullUtil_Access_Array_Access_Array_Access;
   use type NullUtil_Access_Array_Access_Array_Access;
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
   subtype Visitor_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access;
   use type Visitor_Access;
   subtype Visitor_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array;
   use type Visitor_Access_Array;
   subtype Visitor_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access;
   use type Visitor_Access_Array_Access;
   subtype Visitor_Access_Array_Access_Array is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array;
   use type Visitor_Access_Array_Access_Array;
   subtype Visitor_Access_Array_Access_Array_Access is org.allbinary.logic.util.visitor.Visitor_Package_References.Visitor_Access_Array_Access_Array_Access;
   use type Visitor_Access_Array_Access_Array_Access;
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
   subtype ThreadObjectUtil_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access;
   use type ThreadObjectUtil_Access;
   subtype ThreadObjectUtil_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array;
   use type ThreadObjectUtil_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access;
   subtype ThreadObjectUtil_Access_Array_Access_Array is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array;
   use type ThreadObjectUtil_Access_Array_Access_Array;
   subtype ThreadObjectUtil_Access_Array_Access_Array_Access is org.allbinary.thread.ThreadObjectUtil_Package_References.ThreadObjectUtil_Access_Array_Access_Array_Access;
   use type ThreadObjectUtil_Access_Array_Access_Array_Access;
   subtype TimeDelayHelper_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access;
   use type TimeDelayHelper_Access;
   subtype TimeDelayHelper_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array;
   use type TimeDelayHelper_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access;
   subtype TimeDelayHelper_Access_Array_Access_Array is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array;
   use type TimeDelayHelper_Access_Array_Access_Array;
   subtype TimeDelayHelper_Access_Array_Access_Array_Access is org.allbinary.time.TimeDelayHelper_Package_References.TimeDelayHelper_Access_Array_Access_Array_Access;
   use type TimeDelayHelper_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype StupidTimer_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access;
   function "=" (Left, Right : StupidTimer_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array;
   function "=" (Left, Right : StupidTimer_Access_Array) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access;
   function "=" (Left, Right : StupidTimer_Access_Array_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array;
   function "=" (Left, Right : StupidTimer_Access_Array_Access_Array) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";
   subtype StupidTimer_Access_Array_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : StupidTimer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.StupidTimer_Package_References."=";

   type StupidTimer is new Java_Object with record
      logUtil : LogUtil_Access;
      commonStrings : CommonStrings_Access;
      nullUtil : NullUtil_Access;
      threadObjectUtil : ThreadObjectUtil_Access;
   end record;

   procedure Initialize (This : in out StupidTimer'Class);
   function Create return StupidTimer_Access;
   function visitBool (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class) return Boolean;
   procedure visitBool (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class);
   procedure visit (This : in out StupidTimer; visitorInterface_Param : access Visitor_Package.Visitor'Class; timeDelayHelper_Param : access TimeDelayHelper_Package.TimeDelayHelper'Class);
   procedure stopWaiting (This : in out StupidTimer);

end org.allbinary.time.StupidTimer_Package;


