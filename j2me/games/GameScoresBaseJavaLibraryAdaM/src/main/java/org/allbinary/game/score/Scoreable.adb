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


package body org.allbinary.game.score.Scoreable_Package is

   procedure Initialize_Fields (This : in out Scoreable'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out Scoreable'Class; points : Integer) is
   begin
      Initialize_Fields (This);
        This.points := points;
   end Initialize;

   function Create (points : Integer) return Scoreable_Access is
      This : constant Scoreable_Access := new Scoreable;
   begin
      Initialize (This.all, points);
      return This;
   end Create;

   procedure addPoints (This : in out Scoreable; points : Integer) is
   begin
        This.points := (This.points) + (points);
   end addPoints;

   procedure removePoints (This : in out Scoreable; points : Integer) is
   begin
        This.points := (This.points) - (points);
   end removePoints;

   procedure setPoints (This : in out Scoreable; points : Integer) is
   begin
        This.points := points;
   end setPoints;

   function getPoints (This : in out Scoreable) return Integer is
   begin
        return This.points;
   end getPoints;

   procedure getPoints (This : in out Scoreable) is
      Java_Result : constant Integer := Scoreable'Class (This).getPoints;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getPoints;

begin
   null;
   ID := SmallIntegerSingletonFactory_Package.getInstance.getAt (3);

end org.allbinary.game.score.Scoreable_Package;


