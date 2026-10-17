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


package body org.allbinary.business.user.subscription.Subscription_Package is

   procedure Initialize_Fields (This : in out Subscription'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Subscription'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Subscription_Access is
      This : constant Subscription_Access := new Subscription;
   begin
      Initialize (This.all);
      return This;
   end Create;

   function isSubscribed (This : in out Subscription) return Boolean is
   begin
        return True;
   end isSubscribed;

   procedure isSubscribed (This : in out Subscription) is
      Java_Result : constant Boolean := Subscription'Class (This).isSubscribed;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isSubscribed;

end org.allbinary.business.user.subscription.Subscription_Package;


