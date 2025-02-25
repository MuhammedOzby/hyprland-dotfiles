# hyprland-dotfiles

Hyprland simple files with nvidia

Included:

- Hyprland
- Hyprpaper
- Hyprlock (Not complete)
- Waybar

---

Bu kısım yapay zeka ile yazıldı (deepseek-r1:32b):

Hyprland (bir Wayland oturum yöneticisi) yapılandırma dosyasıdır. Hyprland'in davranışlarını, görünümünü ve diğer özellikleri bu dosyada ayarlanmaktadır. Aşağıda, dosyanın bölümlerini ve temel işlevlerini açıklayalım:

---

### 1. **Monitor Ayarı**
```conf
monitor=DP-1, 3440x1440@99.98, 0x0, 1
```
Bu bölümde, hangi monitörün kullanıldığını ve nasıl yapılandırıldığını belirtir:
- `DP-1`: Monitorın adı veya Identifikatörü.
- `3440x1440@99.98`: Monitörün çözünürlüğü ve refresh rate'ı.
- `0x0, 1`: X ve Y pozisyonları, burada monitör primary olarak ayarlanmış.

---

### 2. **Uygulama Başlatımı**
```conf
exec-once=waybar  --config /home/ozbay/.config/hypr/waybar.conf -s /home/ozbay/.config/hypr/style.css
exec-once=hyprpaper
```
Bu komutlar, Hyprland'in başlatıldığında bir kez yürütülecek uygulamaları belirtir:
- `waybar`: Status bar için kullanılır.
- `hyprpaper`:_wallpaper'i ayarlamak için kullanılır.

---

### 3. **Çeşitli Ayarlar**
```conf
$terminal = kitty
$fileManager = thunar
$menu = wofi --show drun
```
Bu blokta, terminal, dosya yöneticisi ve menü komutları tanımlanır:
- `$terminal`: Kitty terminali kullanılır.
- `$fileManager`: Thunar dosya yöneticisi kullanılır.
- `$menu`: Wofi kullanılarak menü oluşturulur.

---

### 4. **Yapılandırma Değişkenleri**
```conf
env = XCURSOR_SIZE,24
env = QT_QPA_PLATFORMTHEME,qt5ct
env = LIBVA_DRIVER_NAME,nvidia
```
Bu komutlar, sistemdeki bazı çevre (environment) değişkenlerini ayarlar:
- `XCURSOR_SIZE`: Fare imlecinin boyutunu 24 olarak ayarlar.
- `QT_QPA_PLATFORMTHEME`: Qt uygulamalarının temasını belirtir.
- `LIBVA_DRIVER_NAME`: Nvidia GPU için video işlemeyi etkinleştirir.

---

### 5. **Girişim Ayarları**
```conf
input {
    kb_layout = tr
    kb_variant =
    kb_model =
    kb_options =
    kb_rules =
    numlock_by_default = true
    follow_mouse = 1

    touchpad {
        natural_scroll = false
    }

    sensitivity = 0  # -1.0 - 1.0, 0 means no modification.
}
```
Bu bölümde, klavye ve fare Ayarları yapılır:
- `kb_layout = tr`: Klavye düzeni Türkçe olarak ayarlanmış.
- `numlock_by_default = true`: Num Lock otomatik olarak açılır.
- `natural_scroll = false`: Fare Scroll doğal hareket etmesini devre dışı bırakır.

---

### 6. **Genel Ayarlar**
```conf
general {
    gaps_in = 2
    gaps_out = 2
    border_size = 2
    col.active_border = rgb(fba0e3) rgb(fba0e3) rgb(3A2239)
    col.inactive_border = rgb(796878) rgb(796878) rgb(bdbbd7)
    layout = master
}
```
Bu bölümde, genel olarak Hyprland'in görünümünü ve davranışını ayarlar:
- `gaps_in` ve `gaps_out`: Pencere aralarındaki boşlukları belirler.
- `border_size`: Pencerelerin kenarının genişliğini ayarlar.
- `col.active_.border` ve `col.inactive_ border`: активと非actice pencere kenarlarının renklerini ayarlar.

---

### 7. **Dekorasyon Ayarları**
```conf
decoration {
    rounding = 8
    inactive_opacity = 0.5
    active_opacity = 1
    blur {
        enabled = true
        size = 12
        passes = 2
        vibrancy = 0.52
        vibrancy_darkness = 0.1
    }
}
```
Bu bölümde, pencerelerin dekorasyonunu ayarlar:
- `rounding`: Pencere köşelerinin Yuvarlaklık seviyesini ayarlar.
- `inactive_ opacity` ve `active_ opacity`: активと非actice pencere transparanты'sını ayarlar.
- `blur`: Pencerelere bulanık efekt ekler.

---

### 8. ** Animasyon Ayarları**
```conf
animations {
    enabled = true

    bezier = myBezier, 0.05, 0.9, 0.1, 1.05
    bezier = borderTransition, 0.1, 0.5, 0.5, 0.1

    animation = windows, 1, 7, myBezier
    animation = windowsOut, 1, 7, default, popin 80%
    animation = border, 1, 10, default
    animation = borderangle, 1, 50, borderTransition, loop
    animation = fade, 1, 7, default
    animation = workspaces, 1, 6, default
}
```
Bu bölümde, animasyonların etkinleştirilmesi ve nasıl çalışması ayarlanır:
- `enabled = true`: Animasyonları açar.
- `bezier`: Animasyon eğrilerini belirtir.

---

### 9. **Dwindle ve Master Layout**
```conf
dwindle {
    pseudotile = true
    preserve_split = true
}
```
Bu bölümde, Dwindle layout'ın Ayarları yapılır:
- `pseudotile`: Pseudo-tile modu etkinleştirilir.

---

### 10. **Anahtar Tuşlarına Ayarlar**
```conf
$mainMod = SUPER

bind = $mainMod, Return, exec, $terminal
bind = $mainMod, C, killactive,
bind = $mainMod, M, exit,
```
Bu bölümde, anahtar tuşlarına atanan komutları belirtir:
- `$mainMod = SUPER`: Anahtar modu Super tuşu ile etkinleştirilir.
- `bind = $mainMod, Return, exec, $terminal`: Super + Enter ile terminal başlatılır.

---

### 11. **Cihaz ve Pencere Ayarları**
```conf
device {
    name = epic-mouse-v1
    sensitivity = -0.5
}

windowrulev2 = suppressevent maximize, class:.*
```
Bu bölümde:
- `device`: Belirli bir cihaza özel ayarlar yapılır.
- `windowrulev2`: Pencere kuralları belirlenir.

---

### 12. **Multimedia Ayarları**
```conf
bindle=, XF86AudioRaiseVolume, exec, vol --up
bindle=, XF86AudioLowerVolume, exec, vol --down
```
Bu bölümde,多媒体 tuşlarına atanan komutlar:
- `XF86AudioRaiseVolume`: Ses artışı için.
- `XF86MonBrightnessUp`: Ayarışık Arttırma.

---


### 1. **Wayland ve Hyprland**
- `hyprland`: Ana oturum yöneticisidir.
- `wayland`:_wayland protokolü için gerekli paketler.

---

### 2. **Status Bar (Waybar)**
```conf
exec-once=waybar   --config  /home/ozbay/.config/hypr/waybar. conf -s /home/ozbay/.config/hypr/style. css
```
Waybar kullanmak için:
```bash
sudo dnf install waybar    # Fedora/RHEL系
sudo apt install waybar    # Debian/Ubuntu系
```

---

### 3. **Wallpaper Yönetimi (Hyprpaper)**
```conf
exec- once=hyprpaper
```
Hyprpaper kullanmak için:
```bash
sudo dnf install hyprpaper  # Fedora/RHEL系
sudo apt install hyprpaper  # Debian/Ubuntu系
```

---

### 4. **Terminal (Kitty)**
```conf
$terminal  = kitty
```
Kitty kullanmak için:
```bash
sudo dnf install kitty       # Fedora/RHEL系
sudo apt install kitty       # Debian/Ubuntu系
```

---

### 5. **Dosya Yöneticisi (Thunar)**
```conf
$fileManager  = thunar
```
Thunar kullanmak için:
```bash
sudo dnf install thunar      # Fedora/RHEL系
sudo apt install thunar      # Debian/Ubuntu系
```

---

### 6. **Menü Sistemi (Wofi)**
```conf
$menu  = wofi  --show drun
```
Wofi kullanmak için:
```bash
sudo dnf install wofi        # Fedora/RHEL系
sudo apt install wofi        # Debian/Ubuntu系
```

---

### 7. **Grafik Driver ve Ayarlar**
```conf
env  = LIBVA_ DRIVER_NAME,nvidia
env  = GBM_BACKEND, nvidia-drm
env  = __GLX_VENDoR_LIBRARY_NAME,nvidia
```
Bu ayarlar için:
- `nvidia-driver`: Nvidia grafik kartı sürücüsü.
- `mesa-vdpau-drivers` veya `mesa-va-drivers`:开源 grafik sürücüleri.

Ayrıca:
```bash
sudo dnf install libva-vdpau-driver meson-wayland  # Fedora/RHEL系
sudo apt install libva-vdpau-driver mesa-va-drivers # Debian/Ubuntu系
```

---

### 8. **Multimedia Komutları**
```conf
bindle=, XF86AudioRaiseVolume, exec, vol --up
bindle=, XF86MonBrightnessUp, exec, bri --up
```
Bu komutlar için:
- `vol` ve `bri`: Bu uygulamalar genellikle üçüncü taraf tarafından geliştirilir. Anahtar tuşlarına dayalı kontroller için `pactl` veya `brightnessctl` gibi araçlar kullanılır.

---

### 9. **General Ayarlar**
- `kitty`: Terminal.
- `thunar`: Dosya yöneticisi.
- `wofi`: Menü sistemi.
- `hyprland`: Oturum Yöneticisi.
- `waybar`: Status bar.

Bu programların tümünü yüklemek için:
```bash
sudo dnf install kitty thunar wofi hyprland waybar meson-wayland libva-vdpau-driver    # Fedora/RHEL系
sudo apt install kitty thunar wofi hyprland waybar meson-wayland libva-vdpau-driver    # Debian/Ubuntu系
```

---

### 10. **Eklentiler**
- `meson-wayland`: Wayland protokolü için gerekli bağımlılıklar.
- `libva-vdpau-driver`: Grafik performansı için video sürücüleri.

Bu paketlerin tümü, Hyprland'ın düzgün çalışması için önemlidır.
