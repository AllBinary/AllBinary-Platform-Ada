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


package body org.allbinary.business.user.commerce.money.payment.types.AuthorizationType_Package is

   procedure Initialize_Fields (This : in out AuthorizationType'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AuthorizationType'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
   end Initialize;

   function Create (name : Unbounded_String) return AuthorizationType_Access is
      This : constant AuthorizationType_Access := new AuthorizationType;
   begin
      AuthorizationType_Package.Initialize (This.all, name);
      return This;
   end Create;

   function toString (This : in out AuthorizationType) return Unbounded_String is
   begin
        return This.name;
   end toString;

end org.allbinary.business.user.commerce.money.payment.types.AuthorizationType_Package;


