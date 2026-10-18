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


with org.allbinary.logic.java.anyType.ConstructorUtil_Package; use org.allbinary.logic.java.anyType.ConstructorUtil_Package;
with org.allbinary.logic.java.anyType.InterfaceUtil_Package; use org.allbinary.logic.java.anyType.InterfaceUtil_Package;
with org.allbinary.logic.java.anyType.MethodUtil_Package; use org.allbinary.logic.java.anyType.MethodUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package body org.allbinary.logic.java.anyType.clazz.ClassUtil_Package is

   package ConstructorUtil_Package renames Standard.org.allbinary.logic.java.anyType.ConstructorUtil_Package;
   package InterfaceUtil_Package renames Standard.org.allbinary.logic.java.anyType.InterfaceUtil_Package;
   package MethodUtil_Package renames Standard.org.allbinary.logic.java.anyType.MethodUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
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

   function viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String) return Unbounded_String is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
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
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (myClass)));
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

   procedure viewAll (anyType_Param : access Java_Object'Class; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (anyType_Param, lineBreak);
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


