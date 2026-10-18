--  Generated Code Do Not Modify


with org.junit.jupiter.api.Assertions_Package; use org.junit.jupiter.api.Assertions_Package;
with org.junit.jupiter.api.DisplayName_Package; use org.junit.jupiter.api.DisplayName_Package;
with org.junit.jupiter.api.Test_Package; use org.junit.jupiter.api.Test_Package;

package body AppTest_Package is

   package Assertions_Package renames Standard.org.junit.jupiter.api.Assertions_Package;
   package DisplayName_Package renames Standard.org.junit.jupiter.api.DisplayName_Package;
   package Test_Package renames Standard.org.junit.jupiter.api.Test_Package;
   procedure Initialize_Fields (This : in out AppTest'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AppTest'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AppTest_Access is
      This : constant AppTest_Access := new AppTest;
   begin
      AppTest_Package.Initialize (This.all);
      return This;
   end Create;


   procedure testAddition (This : in out AppTest) is
   begin
        Assertions_Package.assertEquals (2, (1) + (1));
   end testAddition;

   procedure testStringEquality (This : in out AppTest) is
      expected : Unbounded_String;
      actual : Unbounded_String;
   begin
        expected := To_Unbounded_String ("Hello World!");
        actual := To_Unbounded_String ("Hello World!");
        Assertions_Package.assertEquals (expected, actual);
   end testStringEquality;

   procedure testBooleanAssertions (This : in out AppTest) is
   begin
        Assertions_Package.assertTrue (True);
        Assertions_Package.assertFalse (False);
   end testBooleanAssertions;

end AppTest_Package;


