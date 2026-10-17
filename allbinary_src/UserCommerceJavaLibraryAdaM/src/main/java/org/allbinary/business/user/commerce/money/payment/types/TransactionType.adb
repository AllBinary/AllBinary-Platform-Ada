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


package body org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package is

   procedure Initialize_Fields (This : in out TransactionType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out TransactionType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return TransactionType_Access is
      This : constant TransactionType_Access := new TransactionType;
   begin
      Initialize (This.all, name);
      return This;
   end Create;

   function isEqual (This : in out TransactionType; transactionType : TransactionType_Access) return Boolean is
   begin
        if (This.toString.compareTo (transactionType.toString)) = (0) then
            return True;
        else
            return False;
        end if;
   end isEqual;

   function toString (This : in out TransactionType) return Unbounded_String is
   begin
        return This.name;
   end toString;

   procedure isEqual (This : in out TransactionType; transactionType : TransactionType_Access) is
      Java_Result : constant Boolean := TransactionType'Class (This).isEqual (transactionType);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isEqual;

   procedure toString (This : in out TransactionType) is
      Java_Result : constant Unbounded_String := TransactionType'Class (This).toString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toString;

end org.allbinary.business.user.commerce.money.payment.types.TransactionType_Package;


