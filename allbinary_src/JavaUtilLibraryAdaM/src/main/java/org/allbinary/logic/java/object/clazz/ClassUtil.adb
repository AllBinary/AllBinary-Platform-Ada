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


package body org.allbinary.logic.java.anyType.clazz.ClassUtil_Package is

   procedure Initialize_Fields (This : in out ClassUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out ClassUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ClassUtil_Access is
      This : constant ClassUtil_Access := new ClassUtil;
   begin
      ClassUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function viewAll (anyType : Java_Object_Access; lineBreak : Unbounded_String) return Unbounded_String is
   begin
        if (anyType) /= (null) then
            return ClassUtil_Package.viewAll (anyType.all'Tag, lineBreak);
        else
            return To_Unbounded_String ("Object Null");
        end if;
   end viewAll;

   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      classes : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        if (myClass) /= (null) then
            stringBuffer := StringMaker_Package.Create;
            classes := myClass.getClasses;
            stringBuffer.append (lineBreak);
            stringBuffer.append (To_Unbounded_String ("Class: "));
            stringBuffer.append (myClass.getName);
            stringBuffer.append (To_Unbounded_String (" uses "));
            stringBuffer.appendint (classes'Length);
            stringBuffer.append (To_Unbounded_String (" other classes"));
            stringBuffer.append (lineBreak);
            stringBuffer.append (lineBreak);
            stringBuffer.append (To_Unbounded_String ("Classes: "));
            stringBuffer.append (lineBreak);
            for index in 0 .. (classes'Length) - 1 loop
                stringBuffer.append (To_Unbounded_String ("Class: "));
                stringBuffer.append (classes (index).getName);
                stringBuffer.append (lineBreak);
            end loop;
            stringBuffer.append (InterfaceUtil_Package.viewAll (myClass, lineBreak));
            stringBuffer.append (lineBreak);
            stringBuffer.append (ConstructorUtil_Package.viewAll (myClass, lineBreak));
            stringBuffer.append (lineBreak);
            stringBuffer.append (MethodUtil_Package.viewAll (myClass, lineBreak));
            return stringBuffer.toString;
        else
            return To_Unbounded_String ("Class Null");
        end if;
   end viewAll;

   procedure viewAll (anyType : Java_Object_Access; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (anyType, lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewAll;

   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (myClass, lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewAll;

end org.allbinary.logic.java.anyType.clazz.ClassUtil_Package;


