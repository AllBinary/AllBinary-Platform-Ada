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


package body org.allbinary.business.time.Time_Package is

   procedure Initialize_Fields (This : in out Time'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Time'Class; time : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.timeLong := time;
   end Initialize;

   function Create (time : Unbounded_String) return Time_Access is
      This : constant Time_Access := new Time;
   begin
      Initialize (This.all, time);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out Time'Class; time : Long_Long_Integer) is
   begin
      Initialize_Fields (This);
        This.timeLong := time;
   end Initialize;

   function Create (time : Long_Long_Integer) return Time_Access is
      This : constant Time_Access := new Time;
   begin
      Initialize (This.all, time);
      return This;
   end Create;

   function getLong (This : in out Time) return Long_Long_Integer is
   begin
        return This.timeLong;
   end getLong;

   function getlong (This : in out Time) return Long_Long_Integer is
   begin
        return This.timeLong.longValue;
   end getlong;

   function toString (This : in out Time) return Unbounded_String is
   begin
        return This.getLong.toString;
   end toString;

   procedure getLong (This : in out Time) is
      Java_Result : constant Long_Long_Integer := Time'Class (This).getLong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getLong;

   procedure getlong (This : in out Time) is
      Java_Result : constant Long_Long_Integer := Time'Class (This).getlong;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getlong;

   procedure toString (This : in out Time) is
      Java_Result : constant Unbounded_String := Time'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.business.time.Time_Package;


