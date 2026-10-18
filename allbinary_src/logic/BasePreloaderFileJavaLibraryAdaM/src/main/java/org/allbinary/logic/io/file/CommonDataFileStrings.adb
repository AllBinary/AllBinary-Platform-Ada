-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2026 AllBinary 
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



package body org.allbinary.logic.io.file.CommonDataFileStrings_Package is

   procedure Initialize_Fields (This : in out CommonDataFileStrings'Class) is
   begin
      null;
      This.XML := To_Unbounded_String ("xml");
      This.U_XML := To_Unbounded_String (".xml");
      This.JSON := To_Unbounded_String ("json");
      This.U_JSON := To_Unbounded_String (".json");
      This.XSL := To_Unbounded_String ("xsl");
      This.U_XSL := To_Unbounded_String (".xsl");
      This.JAVA := To_Unbounded_String ("java");
      This.U_JAVA := To_Unbounded_String (".java");
      This.KT := To_Unbounded_String ("kt");
      This.U_KT := To_Unbounded_String (".kt");
      This.TS := To_Unbounded_String ("ts");
      This.U_TS := To_Unbounded_String (".ts");
      This.JS := To_Unbounded_String ("js");
      This.U_JS := To_Unbounded_String (".js");
      This.CPP := To_Unbounded_String ("cpp");
      This.U_CPP := To_Unbounded_String (".cpp");
      This.H := To_Unbounded_String ("h");
      This.U_H := To_Unbounded_String (".h");
      This.PY := To_Unbounded_String ("py");
      This.U_PY := To_Unbounded_String (".py");
      This.GO := To_Unbounded_String ("go");
      This.U_GO := To_Unbounded_String (".go");
      This.CS := To_Unbounded_String ("cs");
      This.U_CS := To_Unbounded_String (".cs");
      This.ADA := To_Unbounded_String ("ada");
      This.U_ADA := To_Unbounded_String (".ada");
      This.RUST := To_Unbounded_String ("rs");
      This.U_RUST := To_Unbounded_String (".rs");
      This.C := To_Unbounded_String ("c");
      This.U_C := To_Unbounded_String (".c");
      This.CSHARP := To_Unbounded_String ("cs");
      This.U_CSHARP := To_Unbounded_String (".cs");
      This.ERL := To_Unbounded_String ("erl");
      This.U_ERL := To_Unbounded_String (".erl");
      This.HS := To_Unbounded_String ("hs");
      This.U_HS := To_Unbounded_String (".hs");
      This.HX := To_Unbounded_String ("hx");
      This.U_HX := To_Unbounded_String (".hx");
      This.LUA := To_Unbounded_String ("lua");
      This.U_LUA := To_Unbounded_String (".lua");
      This.PAS := To_Unbounded_String ("pas");
      This.U_PAS := To_Unbounded_String (".pas");
      This.ML := To_Unbounded_String ("ml");
      This.U_ML := To_Unbounded_String (".ml");
      This.PL := To_Unbounded_String ("pl");
      This.U_PL := To_Unbounded_String (".pl");
      This.RB := To_Unbounded_String ("rb");
      This.U_RB := To_Unbounded_String (".rb");
      This.ZIG := To_Unbounded_String ("zig");
      This.U_ZIG := To_Unbounded_String (".zig");
      This.UNCRYPTED_EXTENSION := This.XML;
      This.ENCRYPTED_EXTENSION := To_Unbounded_String ("abd");
   end Initialize_Fields;

   procedure Initialize (This : in out CommonDataFileStrings'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return CommonDataFileStrings_Access is
      This : constant CommonDataFileStrings_Access := new CommonDataFileStrings;
   begin
      CommonDataFileStrings_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return CommonDataFileStrings_Access is
   begin
        return CommonDataFileStrings_Package.instance;
   end getInstance;

begin
   null;
   instance := CommonDataFileStrings_Package.Create;

end org.allbinary.logic.io.file.CommonDataFileStrings_Package;


