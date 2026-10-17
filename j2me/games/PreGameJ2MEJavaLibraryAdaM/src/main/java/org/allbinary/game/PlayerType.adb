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


package body org.allbinary.game.PlayerType_Package is

   procedure Initialize_Fields (This : in out PlayerType'Class) is
   begin
      null;
      
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out PlayerType'Class; name : Unbounded_String; value : Integer) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.id := value;
   end Initialize;

   function Create (name : Unbounded_String; value : Integer) return PlayerType_Access is
      This : constant PlayerType_Access := new PlayerType;
   begin
      Initialize (This.all, name, value);
      return This;
   end Create;

   function getId (This : in out PlayerType) return Integer is
   begin
        return This.id;
   end getId;

   function getName (This : in out PlayerType) return Unbounded_String is
   begin
        return This.name;
   end getName;

   function toString (This : in out PlayerType) return Unbounded_String is
   begin
        return This.getName;
   end toString;

   procedure getId (This : in out PlayerType) is
      Java_Result : constant Integer := PlayerType'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getName (This : in out PlayerType) is
      Java_Result : constant Unbounded_String := PlayerType'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure toString (This : in out PlayerType) is
      Java_Result : constant Unbounded_String := PlayerType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.PlayerType_Package;


