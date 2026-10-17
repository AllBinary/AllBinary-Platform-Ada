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


package body org.allbinary.direction.Direction_Package is

   procedure Initialize_Fields (This : in out Direction'Class) is
   begin
      null;
      
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out Direction'Class; name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.otherName := otherName;
        This.value := value;
        This.frameFactor := frameFactor;
        Direction_Package.directionArray (value) := This'Unchecked_Access;
   end Initialize;

   function Create (name : Unbounded_String; otherName : Unbounded_String; value : Integer; frameFactor : Integer) return Direction_Access is
      This : constant Direction_Access := new Direction;
   begin
      Direction_Package.Initialize (This.all, name, otherName, value, frameFactor);
      return This;
   end Create;

   function getInstance (direction : Integer) return Direction_Access is
   begin
        return Direction_Package.directionArray (direction);
   end getInstance;

   function getValue (This : in out Direction) return Integer is
   begin
        return This.value;
   end getValue;

   function getFrameFactor (This : in out Direction) return Integer is
   begin
        return This.frameFactor;
   end getFrameFactor;

   function getOtherName (This : in out Direction) return Unbounded_String is
   begin
        return This.otherName;
   end getOtherName;

   function getName (This : in out Direction) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function toString (This : in out Direction) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Direction: "));
        stringBuffer.append (This.getName);
        stringBuffer.append (To_Unbounded_String (" Or: "));
        stringBuffer.append (This.getOtherName);
        stringBuffer.append (To_Unbounded_String (" Value: "));
        stringBuffer.appendint (This.value);
        return stringBuffer.toString;
   end toString;

   procedure getInstance (direction : Integer) is
      Java_Result : constant Direction_Access := getInstance (direction);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   directionArray := new Direction_Access_Array'(0 .. (13) - 1 => null);

end org.allbinary.direction.Direction_Package;


