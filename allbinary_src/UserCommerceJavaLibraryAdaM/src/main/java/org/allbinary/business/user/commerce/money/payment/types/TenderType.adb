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



package body org.allbinary.business.user.commerce.money.payment.types.TenderType_Package is

   procedure Initialize_Fields (This : in out TenderType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TenderType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return TenderType_Access is
      This : constant TenderType_Access := new TenderType;
   begin
      TenderType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function isEqual (This : in out TenderType; tenderType_Param : access TenderType_Package.TenderType'Class) return Boolean is
      tenderType : constant TenderType_Access := TenderType_Access (tenderType_Param);
   begin
        if (Java_Compare_To (TenderType'Class (This).toString, tenderType.toString)) = (0) then
            return True;
        else
            return False;
        end if;
   end isEqual;

   function toString (This : in out TenderType) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure isEqual (This : in out TenderType; tenderType_Param : access TenderType_Package.TenderType'Class) is
      Java_Result : constant Boolean := TenderType'Class (This).isEqual (tenderType_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEqual;

end org.allbinary.business.user.commerce.money.payment.types.TenderType_Package;


