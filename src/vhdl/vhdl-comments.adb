--  Specialisation of File_Comments for vhdl
--  Copyright (C) 2022 Tristan Gingold
--
--  This program is free software: you can redistribute it and/or modify
--  it under the terms of the GNU General Public License as published by
--  the Free Software Foundation, either version 2 of the License, or
--  (at your option) any later version.
--
--  This program is distributed in the hope that it will be useful,
--  but WITHOUT ANY WARRANTY; without even the implied warranty of
--  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--  GNU General Public License for more details.
--
--  You should have received a copy of the GNU General Public License
--  along with this program.  If not, see <gnu.org/licenses>.

--  All the variables declared in this package are set by Parse_Option function
--  and can by read as soon as the command line is parsed.
--
--  Since the names are not prefixed, this package is expected to be with'ed
--  but not to be use'd.

with Types; use Types;
with File_Comments; use File_Comments;

with Vhdl.Scanner; use Vhdl.Scanner;

package body Vhdl.Comments is
   procedure Gather_Comments (N : Iir) is
   begin
      Gather_Comments (Get_Current_Source_File, Uns32 (N));
   end Gather_Comments;
end Vhdl.Comments;
