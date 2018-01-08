# Licensed under the Apache License, Version 2.0 (the License);
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#     http://www.apache.org/licenses/LICENSE-2.0
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an AS IS BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

class Bioperl171 < Formula
  homepage 'http://bioperl.org/'
  desc 'Perl library for bioinformatic applications'
  url 'https://github.com/bioperl/bioperl-live/archive/release-1-7-1.tar.gz'
  sha256 '10105d2d0c39699e6450b8b9c40436ac1b08c4d2667daaab66ef5c21bc4f5f68'
  version '1.7.1'
  revision 1

  patch :DATA

  def install
    libexec.install Dir['*']
  end
end
__END__
diff -aur a/Bio/DB/Flat/BinarySearch.pm a/Bio/DB/Flat/BinarySearch.pm
--- a/Bio/DB/Flat/BinarySearch.pm
+++ a/Bio/DB/Flat/BinarySearch.pm
@@ -363,7 +363,7 @@
         );
     }
     else {
-        $self->{_seqio}->fh($fh);
+        $self->{_seqio}->_fh($fh);
     }

     return $self->{_seqio}->next_seq;
