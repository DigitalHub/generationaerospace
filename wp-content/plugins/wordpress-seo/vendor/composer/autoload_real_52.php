<?php

// autoload_real_52.php generated by xrstf/composer-php52

<<<<<<< HEAD
class ComposerAutoloaderInit3bd6c463f4720842b11a0d038286e492 {
=======
class ComposerAutoloaderInit11b2590ed9b6104c6eb643b74437cf09 {
>>>>>>> b018e5d61e0e77a36842a56fe9bce0a1d1aee5ae
	private static $loader;

	public static function loadClassLoader($class) {
		if ('xrstf_Composer52_ClassLoader' === $class) {
			require dirname(__FILE__).'/ClassLoader52.php';
		}
	}

	/**
	 * @return xrstf_Composer52_ClassLoader
	 */
	public static function getLoader() {
		if (null !== self::$loader) {
			return self::$loader;
		}

<<<<<<< HEAD
		spl_autoload_register(array('ComposerAutoloaderInit3bd6c463f4720842b11a0d038286e492', 'loadClassLoader'), true /*, true */);
		self::$loader = $loader = new xrstf_Composer52_ClassLoader();
		spl_autoload_unregister(array('ComposerAutoloaderInit3bd6c463f4720842b11a0d038286e492', 'loadClassLoader'));
=======
		spl_autoload_register(array('ComposerAutoloaderInit11b2590ed9b6104c6eb643b74437cf09', 'loadClassLoader'), true /*, true */);
		self::$loader = $loader = new xrstf_Composer52_ClassLoader();
		spl_autoload_unregister(array('ComposerAutoloaderInit11b2590ed9b6104c6eb643b74437cf09', 'loadClassLoader'));
>>>>>>> b018e5d61e0e77a36842a56fe9bce0a1d1aee5ae

		$vendorDir = dirname(dirname(__FILE__));
		$baseDir   = dirname($vendorDir);
		$dir       = dirname(__FILE__);

		$map = require $dir.'/autoload_namespaces.php';
		foreach ($map as $namespace => $path) {
			$loader->add($namespace, $path);
		}

		$classMap = require $dir.'/autoload_classmap.php';
		if ($classMap) {
			$loader->addClassMap($classMap);
		}

		$loader->register(true);

		require $vendorDir . '/yoast/whip/src/facades/wordpress.php';

		return $loader;
	}
}
