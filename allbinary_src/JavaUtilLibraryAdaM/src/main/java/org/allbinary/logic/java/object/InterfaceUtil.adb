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


with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonSeps_Package; use org.allbinary.string_Id.CommonSeps_Package;

package body org.allbinary.logic.java.anyType.InterfaceUtil_Package is

   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonSeps_Package renames Standard.org.allbinary.string_Id.CommonSeps_Package;
   procedure Initialize_Fields (This : in out InterfaceUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out InterfaceUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InterfaceUtil_Access is
      This : constant InterfaceUtil_Access := new InterfaceUtil;
   begin
      InterfaceUtil_Package.Initialize (This.all);
      return This;
   end Create;

   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      interfaces : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        interfaces := myClass.getInterfaces;
        stringBuffer.append (lineBreak);
        stringBuffer.append (To_Unbounded_String ("Interfaces: "));
        stringBuffer.append (lineBreak);
        for index in 0 .. (interfaces'Length) - 1 loop
            stringBuffer.append (To_Unbounded_String ("Interface: "));
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (interfaces (index))));
            stringBuffer.append (lineBreak);
        end loop;
        return stringBuffer.toString;
   end viewAll;

   function getClass (interfaceName : Unbounded_String; interfaces : Ada_Tags_Tag_Array_Access) return Ada.Tags.Tag is
      index : Integer;
   begin
        if (((interfaceName) /= (Null_Unbounded_String)) and then ((interfaces) /= (null))) and then ((interfaces'Length) > (0)) then
            for index in 0 .. (interfaces'Length) - 1 loop
                if (Java_Index_Of (To_Unbounded_String (Ada.Tags.Expanded_Name (interfaces (index))), Java_Image (interfaceName))) >= (0) then
                    return interfaces (index);
                end if;
            end loop;
        end if;
        return null;
   end getClass;

   function isImplemented (clazz : Ada.Tags.Tag; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      classes : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        classes := anyType.all'Tag.getInterfaces;
        for index in 0 .. (classes'Length) - 1 loop
            if (Java_Compare_To (To_Unbounded_String (Ada.Tags.Expanded_Name (clazz)), To_Unbounded_String (Ada.Tags.Expanded_Name (classes (index))))) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isImplemented;

   function isImplemented (className : Unbounded_String; anyType_Param : access Java_Object'Class) return Boolean is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      classes : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        classes := anyType.all'Tag.getInterfaces;
        for index in 0 .. (classes'Length) - 1 loop
            if (Java_Index_Of (To_Unbounded_String (Ada.Tags.Expanded_Name (classes (index))), Java_Image (className))) = (0) then
                return True;
            end if;
        end loop;
        return False;
   end isImplemented;

   function isImplementedView (clazz : Ada.Tags.Tag; anyType_Param : access Java_Object'Class) return Unbounded_String is
      anyType : constant Java_Object_Access := Java_Object_Access (anyType_Param);
      stringBuffer : StringMaker_Access;
      classes : Ada_Tags_Tag_Array_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        classes := anyType.all'Tag.getInterfaces;
        stringBuffer.append (To_Unbounded_String ("isImplementedView: " & ASCII.LF & ""));
        for index in 0 .. (classes'Length) - 1 loop
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (clazz)));
            stringBuffer.append (To_Unbounded_String (" should be = "));
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (classes (index))));
            stringBuffer.append (To_Unbounded_String (Ada.Tags.Expanded_Name (classes (index))));
            stringBuffer.append (CommonSeps_Package.getInstance.NEW_LINE);
        end loop;
        return stringBuffer.toString;
   end isImplementedView;

   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (myClass => myClass, lineBreak => lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewAll;

   procedure getClass (interfaceName : Unbounded_String; interfaces : Ada_Tags_Tag_Array_Access) is
      Java_Result : constant Ada.Tags.Tag := getClass (interfaceName => interfaceName, interfaces => interfaces);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getClass;

   procedure isImplemented (clazz : Ada.Tags.Tag; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := isImplemented (clazz => clazz, anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImplemented;

   procedure isImplemented (className : Unbounded_String; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Boolean := isImplemented (className => className, anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImplemented;

   procedure isImplementedView (clazz : Ada.Tags.Tag; anyType_Param : access Java_Object'Class) is
      Java_Result : constant Unbounded_String := isImplementedView (clazz => clazz, anyType_Param => anyType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isImplementedView;

end org.allbinary.logic.java.anyType.InterfaceUtil_Package;


