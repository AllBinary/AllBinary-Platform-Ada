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


package body org.allbinary.game.input.Input_Package is

   procedure Initialize_Fields (This : in out Input'Class) is
   begin
      null;
      This.id := 0;
      This.name := StringUtil_Package.getInstance.EMPTY_STRING;
   end Initialize_Fields;


   procedure Initialize (This : in out Input'Class; id : Integer; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.setId (id);
        This.setName (name);
   end Initialize;

   function Create (id : Integer; name : Unbounded_String) return Input_Access is
      This : constant Input_Access := new Input;
   begin
      Initialize (This.all, id, name);
      return This;
   end Create;

   function getId (This : in out Input) return Integer is
   begin
        return This.id;
   end getId;

   procedure setId (This : in out Input; key : Integer) is
   begin
        This.id := key;
   end setId;

   function getName (This : in out Input) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out Input; keyName : Unbounded_String) is
   begin
        This.name := keyName;
   end setName;

   function toString (This : in out Input) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (To_Unbounded_String ("Name: "));
        stringBuffer.append (This.getName);
        stringBuffer.append (To_Unbounded_String (" Id: "));
        stringBuffer.appendint (This.getId);
        return stringBuffer.toString;
   end toString;

   procedure getId (This : in out Input) is
      Java_Result : constant Integer := Input'Class (This).getId;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getId;

   procedure getName (This : in out Input) is
      Java_Result : constant Unbounded_String := Input'Class (This).getName;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getName;

   procedure toString (This : in out Input) is
      Java_Result : constant Unbounded_String := Input'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.game.input.Input_Package;


