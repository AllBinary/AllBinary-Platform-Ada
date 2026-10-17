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


package body org.allbinary.logic.java.number.LongUtil_Package is

   procedure Initialize_Fields (This : in out LongUtil'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out LongUtil'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return LongUtil_Access is
      This : constant LongUtil_Access := new LongUtil;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function fillIn (end_Id : Unbounded_String) return Unbounded_String is
      frameStringBuffer : StringMaker_Access;
      commonPhoneStrings : CommonPhoneStrings_Access;
      size : Integer;
      index : Integer;
   begin
        frameStringBuffer := StringMaker_Package.Create;
        if (frameStringBuffer.length) < (LongData_Package.MAX_LONG_LENGTH) then
            commonPhoneStrings := CommonPhoneStrings_Package.getInstance;
            size := (LongData_Package.MAX_LONG_LENGTH) - (frameStringBuffer.length);
            for index in 0 .. (size) - 1 loop
                frameStringBuffer.append (commonPhoneStrings.ZERO);
            end loop;
        end if;
        frameStringBuffer.append (end_Id);
        return frameStringBuffer.toString;
   end fillIn;

   procedure fillIn (end_Id : Unbounded_String) is
      Java_Result : constant Unbounded_String := fillIn (end_Id);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end fillIn;

end org.allbinary.logic.java.number.LongUtil_Package;


