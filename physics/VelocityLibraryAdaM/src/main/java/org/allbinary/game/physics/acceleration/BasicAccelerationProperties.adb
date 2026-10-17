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


package body org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package is

   procedure Initialize_Fields (This : in out BasicAccelerationProperties'Class) is
   begin
      null;
      This.forward := 0;
      This.reverse_Id := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicAccelerationProperties'Class; forward : Integer; reverse_Id : Integer) is
   begin
      Initialize_Fields (This);
        This.setForward (forward);
        This.setReverse (reverse_Id);
   end Initialize;

   function Create (forward : Integer; reverse_Id : Integer) return BasicAccelerationProperties_Access is
      This : constant BasicAccelerationProperties_Access := new BasicAccelerationProperties;
   begin
      Initialize (This.all, forward, reverse_Id);
      return This;
   end Create;

   procedure setReverse (This : in out BasicAccelerationProperties; reverse_Id : Integer) is
   begin
        This.reverse_Id := reverse_Id;
   end setReverse;

   function getReverse (This : in out BasicAccelerationProperties) return Integer is
   begin
        return This.reverse_Id;
   end getReverse;

   procedure setForward (This : in out BasicAccelerationProperties; forward : Integer) is
   begin
        This.forward := forward;
   end setForward;

   function getForward (This : in out BasicAccelerationProperties) return Integer is
   begin
        return This.forward;
   end getForward;

   procedure getReverse (This : in out BasicAccelerationProperties) is
      Java_Result : constant Integer := BasicAccelerationProperties'Class (This).getReverse;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getReverse;

   procedure getForward (This : in out BasicAccelerationProperties) is
      Java_Result : constant Integer := BasicAccelerationProperties'Class (This).getForward;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getForward;

end org.allbinary.game.physics.acceleration.BasicAccelerationProperties_Package;


