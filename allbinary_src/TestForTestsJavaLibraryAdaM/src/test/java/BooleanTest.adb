--  Generated Code Do Not Modify


with org.junit.jupiter.api.Assertions_Package; use org.junit.jupiter.api.Assertions_Package;
with org.junit.jupiter.api.DisplayName_Package; use org.junit.jupiter.api.DisplayName_Package;
with org.junit.jupiter.api.Test_Package; use org.junit.jupiter.api.Test_Package;

package body BooleanTest_Package is

   package Assertions_Package renames Standard.org.junit.jupiter.api.Assertions_Package;
   package DisplayName_Package renames Standard.org.junit.jupiter.api.DisplayName_Package;
   package Test_Package renames Standard.org.junit.jupiter.api.Test_Package;
   procedure Initialize_Fields (This : in out BooleanTest'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out BooleanTest'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return BooleanTest_Access is
      This : constant BooleanTest_Access := new BooleanTest;
   begin
      BooleanTest_Package.Initialize (This.all);
      return This;
   end Create;


end BooleanTest_Package;


