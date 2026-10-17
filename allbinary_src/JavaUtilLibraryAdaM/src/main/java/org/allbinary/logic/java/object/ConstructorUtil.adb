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


package body org.allbinary.logic.java.anyType.ConstructorUtil_Package is

   procedure Initialize_Fields (This : in out ConstructorUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ConstructorUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ConstructorUtil_Access is
      This : constant ConstructorUtil_Access := new ConstructorUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      constructor : Constructor_Access_Array_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        constructor := myClass.getConstructors;
        stringBuffer.append (To_Unbounded_String ("Constructors: "));
        stringBuffer.append (lineBreak);
        for index in 0 .. (constructor'Length) - 1 loop
            stringBuffer.append (ConstructorUtil_Package.view (constructor (index), lineBreak));
        end loop;
        return stringBuffer.toString;
   end viewAll;

   function view (constructor : Constructor_Access; lineBreak : Unbounded_String) return Unbounded_String is
      commonSeps : CommonSeps_Access;
      stringBuffer : StringMaker_Access;
      classes : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        if (constructor) /= (null) then
            commonSeps := CommonSeps_Package.getInstance;
            stringBuffer := StringMaker_Package.Create;
            stringBuffer.append (constructor.getName);
            classes := constructor.getParameterTypes;
            for index in 0 .. (classes'Length) - 1 loop
                stringBuffer.append (commonSeps.SPACE);
                stringBuffer.append (classes (index).getName);
                stringBuffer.append (commonSeps.COLON);
                stringBuffer.appendint (index);
            end loop;
            stringBuffer.append (lineBreak);
            return stringBuffer.toString;
        else
            return To_Unbounded_String ("Constructor Null");
        end if;
   end view;

   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (myClass, lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewAll;

   procedure view (constructor : Constructor_Access; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := view (constructor, lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end view;

end org.allbinary.logic.java.anyType.ConstructorUtil_Package;


