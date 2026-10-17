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


package body org.allbinary.logic.math.Orientation_Package is

   procedure Initialize_Fields (This : in out Orientation'Class) is
   begin
      null;
      This.yaw := BasicDecimal_Package.Create (0);
      This.pitch := BasicDecimal_Package.Create (0);
      This.roll := BasicDecimal_Package.Create (0);
   end Initialize_Fields;


   function getInstance (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access is
   begin
        Orientation_Package.SINGLETON.yaw.setint (yaw);
        Orientation_Package.SINGLETON.pitch.setint (pitch);
        Orientation_Package.SINGLETON.roll.setint (roll);
        return Orientation_Package.SINGLETON;
   end getInstance;

   procedure Initialize (This : in out Orientation'Class; yaw : Integer; pitch : Integer; roll : Integer) is
   begin
      Initialize_Fields (This);
        This.yaw.setint (yaw);
        This.pitch.setint (pitch);
        This.roll.setint (roll);
   end Initialize;

   function Create (yaw : Integer; pitch : Integer; roll : Integer) return Orientation_Access is
      This : constant Orientation_Access := new Orientation;
   begin
      Orientation_Package.Initialize (This.all, yaw, pitch, roll);
      return This;
   end Create;

   function toString (This : in out Orientation) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Y: "));
        stringBuffer.append (This.yaw.toString);
        stringBuffer.append (To_Unbounded_String (" P: "));
        stringBuffer.append (This.pitch.toString);
        stringBuffer.append (To_Unbounded_String (" R: "));
        stringBuffer.append (This.roll.toString);
        return stringBuffer.toString;
   end toString;

   procedure getInstance (yaw : Integer; pitch : Integer; roll : Integer) is
      Java_Result : constant Orientation_Access := getInstance (yaw, pitch, roll);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   NONE := Orientation_Package.Create (0, 0, 0);
   SINGLETON := Orientation_Package.Create (0, 0, 0);

end org.allbinary.logic.math.Orientation_Package;


