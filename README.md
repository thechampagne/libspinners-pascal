# libspinners-pascal

[![](https://img.shields.io/github/v/tag/thechampagne/libspinners-pascal?label=version)](https://github.com/thechampagne/libspinners-pascal/releases/latest) [![](https://img.shields.io/github/license/thechampagne/libspinners-pascal)](https://github.com/thechampagne/libspinners-pascal/blob/main/LICENSE)

Pascal binding for **libspinners** an elegant terminal spinners.

### Example

```pas
program example;

uses SysUtils, spinner;

var
   spin	: TSpinner;
begin
   spin := TSpinnerNew(TSpinners.DOTS9, 'Waiting for 3 seconds');
   sleep(3000);
   TSpinnerStop(spin);
   TSpinnerClean(spin);
end.
```

### References
 - [libspinners](https://github.com/thechampagne/libspinners)

### License

This repo is released under the [MIT](https://github.com/thechampagne/libspinners-pascal/blob/main/LICENSE).
