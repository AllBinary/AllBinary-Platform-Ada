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


package body org.allbinary.logic.java.anyType.MethodUtil_Package is

   procedure Initialize_Fields (This : in out MethodUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out MethodUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return MethodUtil_Access is
      This : constant MethodUtil_Access := new MethodUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) return Unbounded_String is
      stringBuffer : StringMaker_Access;
      method : Method_Access_Array_Access;
      index : Integer;
   begin
        stringBuffer := StringMaker_Package.Create;
        method := myClass.getMethods;
        stringBuffer.append (To_Unbounded_String ("Methods: "));
        stringBuffer.append (lineBreak);
        for index in 0 .. (method'Length) - 1 loop
            stringBuffer.append (method (index).getReturnType.getName);
            stringBuffer.append (To_Unbounded_String (" "));
            stringBuffer.append (method (index).getName);
            stringBuffer.append (To_Unbounded_String ("("));
            ParamsUtil_Package.viewParams (method (index).getParameterTypes);
            stringBuffer.append (To_Unbounded_String (")"));
            stringBuffer.append (lineBreak);
        end loop;
        return stringBuffer.toString;
   end viewAll;

   procedure viewAll (myClass : Ada.Tags.Tag; lineBreak : Unbounded_String) is
      Java_Result : constant Unbounded_String := viewAll (myClass, lineBreak);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end viewAll;

end org.allbinary.logic.java.anyType.MethodUtil_Package;


