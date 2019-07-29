program CryptoLib.Tests.TestInsight;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$WARN DUPLICATE_CTOR_DTOR OFF}
{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  TestInsight.DUnit,
  ClpECGost3410NamedCurves in '..\..\CryptoLib\src\Asn1\CryptoPro\ClpECGost3410NamedCurves.pas',
  ClpCryptoProObjectIdentifiers in '..\..\CryptoLib\src\Asn1\CryptoPro\ClpCryptoProObjectIdentifiers.pas',
  ClpNistObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Nist\ClpNistObjectIdentifiers.pas',
  ClpOiwObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Oiw\ClpOiwObjectIdentifiers.pas',
  ClpPkcsObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Pkcs\ClpPkcsObjectIdentifiers.pas',
  ClpRosstandartObjectIdentifiers in '..\..\CryptoLib\src\Asn1\RossStandart\ClpRosstandartObjectIdentifiers.pas',
  ClpSecNamedCurves in '..\..\CryptoLib\src\Asn1\Sec\ClpSecNamedCurves.pas',
  ClpSecObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Sec\ClpSecObjectIdentifiers.pas',
  ClpTeleTrusTObjectIdentifiers in '..\..\CryptoLib\src\Asn1\TeleTrust\ClpTeleTrusTObjectIdentifiers.pas',
  ClpECNamedCurveTable in '..\..\CryptoLib\src\Asn1\X9\ClpECNamedCurveTable.pas',
  ClpX9ECParameters in '..\..\CryptoLib\src\Asn1\X9\ClpX9ECParameters.pas',
  ClpX9ECParametersHolder in '..\..\CryptoLib\src\Asn1\X9\ClpX9ECParametersHolder.pas',
  ClpX9ObjectIdentifiers in '..\..\CryptoLib\src\Asn1\X9\ClpX9ObjectIdentifiers.pas',
  ClpOidTokenizer in '..\..\CryptoLib\src\Asn1\ClpOidTokenizer.pas',
  ClpECKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpECKeyPairGenerator.pas',
  ClpECDomainParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpECDomainParameters.pas',
  ClpECKeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpECKeyGenerationParameters.pas',
  ClpECKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpECKeyParameters.pas',
  ClpECPrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpECPrivateKeyParameters.pas',
  ClpECPublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpECPublicKeyParameters.pas',
  ClpCryptoApiRandomGenerator in '..\..\CryptoLib\src\Crypto\Prng\ClpCryptoApiRandomGenerator.pas',
  ClpDigestRandomGenerator in '..\..\CryptoLib\src\Crypto\Prng\ClpDigestRandomGenerator.pas',
  ClpAsymmetricCipherKeyPair in '..\..\CryptoLib\src\Crypto\ClpAsymmetricCipherKeyPair.pas',
  ClpAsymmetricKeyParameter in '..\..\CryptoLib\src\Crypto\ClpAsymmetricKeyParameter.pas',
  ClpKeyGenerationParameters in '..\..\CryptoLib\src\Crypto\ClpKeyGenerationParameters.pas',
  ClpIAsymmetricCipherKeyPair in '..\..\CryptoLib\src\Interfaces\ClpIAsymmetricCipherKeyPair.pas',
  ClpIAsymmetricCipherKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIAsymmetricCipherKeyPairGenerator.pas',
  ClpIAsymmetricKeyParameter in '..\..\CryptoLib\src\Interfaces\ClpIAsymmetricKeyParameter.pas',
  ClpICipherParameters in '..\..\CryptoLib\src\Interfaces\ClpICipherParameters.pas',
  ClpICryptoApiRandomGenerator in '..\..\CryptoLib\src\Interfaces\ClpICryptoApiRandomGenerator.pas',
  ClpIDigestRandomGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDigestRandomGenerator.pas',
  ClpIECDomainParameters in '..\..\CryptoLib\src\Interfaces\ClpIECDomainParameters.pas',
  ClpIECC in '..\..\CryptoLib\src\Interfaces\ClpIECC.pas',
  ClpIECKeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIECKeyGenerationParameters.pas',
  ClpIECKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIECKeyPairGenerator.pas',
  ClpIECKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIECKeyParameters.pas',
  ClpIECPrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIECPrivateKeyParameters.pas',
  ClpIECPublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIECPublicKeyParameters.pas',
  ClpIExtensionField in '..\..\CryptoLib\src\Interfaces\ClpIExtensionField.pas',
  ClpIFiniteField in '..\..\CryptoLib\src\Interfaces\ClpIFiniteField.pas',
  ClpIFixedPointPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIFixedPointPreCompInfo.pas',
  ClpIGlvEndomorphism in '..\..\CryptoLib\src\Interfaces\ClpIGlvEndomorphism.pas',
  ClpIGlvTypeBEndomorphism in '..\..\CryptoLib\src\Interfaces\ClpIGlvTypeBEndomorphism.pas',
  ClpIGlvTypeBParameters in '..\..\CryptoLib\src\Interfaces\ClpIGlvTypeBParameters.pas',
  ClpIKeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIKeyGenerationParameters.pas',
  ClpIOidTokenizer in '..\..\CryptoLib\src\Interfaces\ClpIOidTokenizer.pas',
  ClpIPolynomial in '..\..\CryptoLib\src\Interfaces\ClpIPolynomial.pas',
  ClpIPolynomialExtensionField in '..\..\CryptoLib\src\Interfaces\ClpIPolynomialExtensionField.pas',
  ClpIPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIPreCompInfo.pas',
  ClpIAsn1Objects in '..\..\CryptoLib\src\Interfaces\ClpIAsn1Objects.pas',
  ClpIRandom in '..\..\CryptoLib\src\Interfaces\ClpIRandom.pas',
  ClpIRandomGenerator in '..\..\CryptoLib\src\Interfaces\ClpIRandomGenerator.pas',
  ClpIRandomNumberGenerator in '..\..\CryptoLib\src\Interfaces\ClpIRandomNumberGenerator.pas',
  ClpIScaleXPointMap in '..\..\CryptoLib\src\Interfaces\ClpIScaleXPointMap.pas',
  ClpISecureRandom in '..\..\CryptoLib\src\Interfaces\ClpISecureRandom.pas',
  ClpIWNafPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIWNafPreCompInfo.pas',
  ClpIX9ECParameters in '..\..\CryptoLib\src\Interfaces\ClpIX9ECParameters.pas',
  ClpIX9ECParametersHolder in '..\..\CryptoLib\src\Interfaces\ClpIX9ECParametersHolder.pas',
  ClpGlvTypeBEndomorphism in '..\..\CryptoLib\src\Math\EC\Endo\ClpGlvTypeBEndomorphism.pas',
  ClpGlvTypeBParameters in '..\..\CryptoLib\src\Math\EC\Endo\ClpGlvTypeBParameters.pas',
  ClpFixedPointPreCompInfo in '..\..\CryptoLib\src\Math\EC\Multiplier\ClpFixedPointPreCompInfo.pas',
  ClpWNafPreCompInfo in '..\..\CryptoLib\src\Math\EC\Multiplier\ClpWNafPreCompInfo.pas',
  ClpECAlgorithms in '..\..\CryptoLib\src\Math\EC\ClpECAlgorithms.pas',
  ClpLongArray in '..\..\CryptoLib\src\Math\EC\ClpLongArray.pas',
  ClpScaleXPointMap in '..\..\CryptoLib\src\Math\EC\ClpScaleXPointMap.pas',
  ClpBigInteger in '..\..\CryptoLib\src\Math\ClpBigInteger.pas',
  ClpDigestUtilities in '..\..\CryptoLib\src\Security\ClpDigestUtilities.pas',
  ClpRandom in '..\..\CryptoLib\src\Security\ClpRandom.pas',
  ClpSecureRandom in '..\..\CryptoLib\src\Security\ClpSecureRandom.pas',
  ClpRandomNumberGenerator in '..\..\CryptoLib\src\Utils\Rng\ClpRandomNumberGenerator.pas',
  ClpArrayUtils in '..\..\CryptoLib\src\Utils\ClpArrayUtils.pas',
  ClpBitConverter in '..\..\CryptoLib\src\Utils\ClpBitConverter.pas',
  ClpBits in '..\..\CryptoLib\src\Utils\ClpBits.pas',
  ClpConverters in '..\..\CryptoLib\src\Utils\ClpConverters.pas',
  ClpCryptoLibTypes in '..\..\CryptoLib\src\Utils\ClpCryptoLibTypes.pas',
  ClpTimes in '..\..\CryptoLib\src\Utils\ClpTimes.pas',
  ClpBigIntegers in '..\..\CryptoLib\src\Utils\ClpBigIntegers.pas',
  ClpMod in '..\..\CryptoLib\src\Math\Raw\ClpMod.pas',
  ClpNat in '..\..\CryptoLib\src\Math\Raw\ClpNat.pas',
  ClpParametersWithRandom in '..\..\CryptoLib\src\Crypto\Parameters\ClpParametersWithRandom.pas',
  ClpIParametersWithRandom in '..\..\CryptoLib\src\Interfaces\ClpIParametersWithRandom.pas',
  ClpIDsa in '..\..\CryptoLib\src\Interfaces\ClpIDsa.pas',
  ClpIDsaKCalculator in '..\..\CryptoLib\src\Interfaces\ClpIDsaKCalculator.pas',
  ClpISigner in '..\..\CryptoLib\src\Interfaces\ClpISigner.pas',
  ClpRandomDsaKCalculator in '..\..\CryptoLib\src\Crypto\Signers\ClpRandomDsaKCalculator.pas',
  ClpIRandomDsaKCalculator in '..\..\CryptoLib\src\Interfaces\ClpIRandomDsaKCalculator.pas',
  ClpECDsaSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpECDsaSigner.pas',
  ClpIECDsaSigner in '..\..\CryptoLib\src\Interfaces\ClpIECDsaSigner.pas',
  ClpDsaDigestSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpDsaDigestSigner.pas',
  ClpIDsaDigestSigner in '..\..\CryptoLib\src\Interfaces\ClpIDsaDigestSigner.pas',
  ClpSignerUtilities in '..\..\CryptoLib\src\Security\ClpSignerUtilities.pas',
  ClpZTauElement in '..\..\CryptoLib\src\Math\EC\Abc\ClpZTauElement.pas',
  ClpIZTauElement in '..\..\CryptoLib\src\Interfaces\ClpIZTauElement.pas',
  ClpSimpleBigDecimal in '..\..\CryptoLib\src\Math\EC\Abc\ClpSimpleBigDecimal.pas',
  ClpTnaf in '..\..\CryptoLib\src\Math\EC\Abc\ClpTnaf.pas',
  ClpWTauNafPreCompInfo in '..\..\CryptoLib\src\Math\EC\Multiplier\ClpWTauNafPreCompInfo.pas',
  ClpIWTauNafPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIWTauNafPreCompInfo.pas',
  ClpGF2Polynomial in '..\..\CryptoLib\src\Math\Field\ClpGF2Polynomial.pas',
  ClpIGF2Polynomial in '..\..\CryptoLib\src\Interfaces\ClpIGF2Polynomial.pas',
  ClpGenericPolynomialExtensionField in '..\..\CryptoLib\src\Math\Field\ClpGenericPolynomialExtensionField.pas',
  ClpIGenericPolynomialExtensionField in '..\..\CryptoLib\src\Interfaces\ClpIGenericPolynomialExtensionField.pas',
  ClpPrimeField in '..\..\CryptoLib\src\Math\Field\ClpPrimeField.pas',
  ClpIPrimeField in '..\..\CryptoLib\src\Interfaces\ClpIPrimeField.pas',
  ClpFiniteFields in '..\..\CryptoLib\src\Math\Field\ClpFiniteFields.pas',
  ClpOSRandom in '..\..\CryptoLib\src\Utils\Randoms\ClpOSRandom.pas',
  ClpSetWeakRef in '..\..\CryptoLib\src\Utils\ClpSetWeakRef.pas',
  ClpCipherUtilities in '..\..\CryptoLib\src\Security\ClpCipherUtilities.pas',
  ClpIBufferedCipher in '..\..\CryptoLib\src\Interfaces\ClpIBufferedCipher.pas',
  ClpIBlockCipher in '..\..\CryptoLib\src\Interfaces\ClpIBlockCipher.pas',
  ClpIBlockCipherPadding in '..\..\CryptoLib\src\Interfaces\ClpIBlockCipherPadding.pas',
  ClpParametersWithIV in '..\..\CryptoLib\src\Crypto\Parameters\ClpParametersWithIV.pas',
  ClpIParametersWithIV in '..\..\CryptoLib\src\Interfaces\ClpIParametersWithIV.pas',
  ClpKeyParameter in '..\..\CryptoLib\src\Crypto\Parameters\ClpKeyParameter.pas',
  ClpIKeyParameter in '..\..\CryptoLib\src\Interfaces\ClpIKeyParameter.pas',
  ClpBufferedCipherBase in '..\..\CryptoLib\src\Crypto\ClpBufferedCipherBase.pas',
  ClpIBufferedCipherBase in '..\..\CryptoLib\src\Interfaces\ClpIBufferedCipherBase.pas',
  ClpBufferedBlockCipher in '..\..\CryptoLib\src\Crypto\ClpBufferedBlockCipher.pas',
  ClpIBufferedBlockCipher in '..\..\CryptoLib\src\Interfaces\ClpIBufferedBlockCipher.pas',
  ClpCheck in '..\..\CryptoLib\src\Utils\ClpCheck.pas',
  ClpPaddedBufferedBlockCipher in '..\..\CryptoLib\src\Crypto\Paddings\ClpPaddedBufferedBlockCipher.pas',
  ClpIPaddedBufferedBlockCipher in '..\..\CryptoLib\src\Interfaces\ClpIPaddedBufferedBlockCipher.pas',
  ClpGeneratorUtilities in '..\..\CryptoLib\src\Security\ClpGeneratorUtilities.pas',
  ClpParameterUtilities in '..\..\CryptoLib\src\Security\ClpParameterUtilities.pas',
  ClpAesEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpAesEngine.pas',
  ClpIAesEngine in '..\..\CryptoLib\src\Interfaces\ClpIAesEngine.pas',
  ClpECDHBasicAgreement in '..\..\CryptoLib\src\Crypto\Agreement\ClpECDHBasicAgreement.pas',
  ClpIBasicAgreement in '..\..\CryptoLib\src\Interfaces\ClpIBasicAgreement.pas',
  ClpIECDHBasicAgreement in '..\..\CryptoLib\src\Interfaces\ClpIECDHBasicAgreement.pas',
  ClpIESParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpIESParameters.pas',
  ClpIIESParameters in '..\..\CryptoLib\src\Interfaces\ClpIIESParameters.pas',
  ClpIESWithCipherParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpIESWithCipherParameters.pas',
  ClpIIESWithCipherParameters in '..\..\CryptoLib\src\Interfaces\ClpIIESWithCipherParameters.pas',
  ClpIDerivationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDerivationParameters.pas',
  ClpIDerivationFunction in '..\..\CryptoLib\src\Interfaces\ClpIDerivationFunction.pas',
  ClpKdfParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpKdfParameters.pas',
  ClpIKdfParameters in '..\..\CryptoLib\src\Interfaces\ClpIKdfParameters.pas',
  ClpIso18033KdfParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpIso18033KdfParameters.pas',
  ClpIIso18033KdfParameters in '..\..\CryptoLib\src\Interfaces\ClpIIso18033KdfParameters.pas',
  ClpBaseKdfBytesGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpBaseKdfBytesGenerator.pas',
  ClpIBaseKdfBytesGenerator in '..\..\CryptoLib\src\Interfaces\ClpIBaseKdfBytesGenerator.pas',
  ClpKdf2BytesGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpKdf2BytesGenerator.pas',
  ClpIKdf2BytesGenerator in '..\..\CryptoLib\src\Interfaces\ClpIKdf2BytesGenerator.pas',
  ClpIKeyParser in '..\..\CryptoLib\src\Interfaces\ClpIKeyParser.pas',
  ClpEphemeralKeyPair in '..\..\CryptoLib\src\Crypto\ClpEphemeralKeyPair.pas',
  ClpIEphemeralKeyPair in '..\..\CryptoLib\src\Interfaces\ClpIEphemeralKeyPair.pas',
  ClpEphemeralKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpEphemeralKeyPairGenerator.pas',
  ClpIEphemeralKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIEphemeralKeyPairGenerator.pas',
  ClpKeyEncoder in '..\..\CryptoLib\src\Crypto\ClpKeyEncoder.pas',
  ClpIKeyEncoder in '..\..\CryptoLib\src\Interfaces\ClpIKeyEncoder.pas',
  ClpIESCipher in '..\..\CryptoLib\src\Crypto\ClpIESCipher.pas',
  ClpIIESCipher in '..\..\CryptoLib\src\Interfaces\ClpIIESCipher.pas',
  ClpECIESPublicKeyParser in '..\..\CryptoLib\src\Crypto\Parsers\ClpECIESPublicKeyParser.pas',
  ClpIECIESPublicKeyParser in '..\..\CryptoLib\src\Interfaces\ClpIECIESPublicKeyParser.pas',
  ClpIESEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpIESEngine.pas',
  ClpIIESEngine in '..\..\CryptoLib\src\Interfaces\ClpIIESEngine.pas',
  ClpPascalCoinIESEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpPascalCoinIESEngine.pas',
  ClpIPascalCoinIESEngine in '..\..\CryptoLib\src\Interfaces\ClpIPascalCoinIESEngine.pas',
  ClpPascalCoinECIESKdfBytesGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpPascalCoinECIESKdfBytesGenerator.pas',
  ClpIPascalCoinECIESKdfBytesGenerator in '..\..\CryptoLib\src\Interfaces\ClpIPascalCoinECIESKdfBytesGenerator.pas',
  ClpIDigest in '..\..\CryptoLib\src\Interfaces\ClpIDigest.pas',
  ClpIMac in '..\..\CryptoLib\src\Interfaces\ClpIMac.pas',
  ClpStringUtils in '..\..\CryptoLib\src\Utils\ClpStringUtils.pas',
  ClpCipherKeyGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpCipherKeyGenerator.pas',
  ClpICipherKeyGenerator in '..\..\CryptoLib\src\Interfaces\ClpICipherKeyGenerator.pas',
  ClpHMac in '..\..\CryptoLib\src\Crypto\Macs\ClpHMac.pas',
  ClpIHMac in '..\..\CryptoLib\src\Interfaces\ClpIHMac.pas',
  ClpMacUtilities in '..\..\CryptoLib\src\Security\ClpMacUtilities.pas',
  ClpIanaObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Iana\ClpIanaObjectIdentifiers.pas',
  ClpMiscObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Misc\ClpMiscObjectIdentifiers.pas',
  ClpPbeParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpPbeParametersGenerator.pas',
  ClpIPbeParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIPbeParametersGenerator.pas',
  ClpPkcs5S2ParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpPkcs5S2ParametersGenerator.pas',
  ClpIPkcs5S2ParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIPkcs5S2ParametersGenerator.pas',
  ClpECNRSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpECNRSigner.pas',
  ClpIECNRSigner in '..\..\CryptoLib\src\Interfaces\ClpIECNRSigner.pas',
  ClpDsaValidationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaValidationParameters.pas',
  ClpIDsaValidationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaValidationParameters.pas',
  ClpDsaParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaParameters.pas',
  ClpIDsaParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaParameters.pas',
  ClpDsaPublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaPublicKeyParameters.pas',
  ClpIDsaPublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaPublicKeyParameters.pas',
  ClpDsaKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaKeyParameters.pas',
  ClpIDsaKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaKeyParameters.pas',
  ClpDsaKeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaKeyGenerationParameters.pas',
  ClpIDsaKeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaKeyGenerationParameters.pas',
  ClpDsaPrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaPrivateKeyParameters.pas',
  ClpIDsaPrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaPrivateKeyParameters.pas',
  ClpDsaKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpDsaKeyPairGenerator.pas',
  ClpIDsaKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDsaKeyPairGenerator.pas',
  ClpDsaSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpDsaSigner.pas',
  ClpEncoders in '..\..\CryptoLib\src\Utils\Encoders\ClpEncoders.pas',
  ClpIDsaSigner in '..\..\CryptoLib\src\Interfaces\ClpIDsaSigner.pas',
  ClpDigest in '..\..\CryptoLib\src\Crypto\Digests\ClpDigest.pas',
  ClpECDHCBasicAgreement in '..\..\CryptoLib\src\Crypto\Agreement\ClpECDHCBasicAgreement.pas',
  ClpIECDHCBasicAgreement in '..\..\CryptoLib\src\Interfaces\ClpIECDHCBasicAgreement.pas',
  ClpHMacDsaKCalculator in '..\..\CryptoLib\src\Crypto\Signers\ClpHMacDsaKCalculator.pas',
  ClpIHMacDsaKCalculator in '..\..\CryptoLib\src\Interfaces\ClpIHMacDsaKCalculator.pas',
  ClpHkdfBytesGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpHkdfBytesGenerator.pas',
  ClpIHkdfBytesGenerator in '..\..\CryptoLib\src\Interfaces\ClpIHkdfBytesGenerator.pas',
  ClpHkdfParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpHkdfParameters.pas',
  ClpIHkdfParameters in '..\..\CryptoLib\src\Interfaces\ClpIHkdfParameters.pas',
  ClpDsaParameterGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDsaParameterGenerationParameters.pas',
  ClpIDsaParameterGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDsaParameterGenerationParameters.pas',
  ClpValidityPreCompInfo in '..\..\CryptoLib\src\Math\EC\Multiplier\ClpValidityPreCompInfo.pas',
  ClpIValidityPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIValidityPreCompInfo.pas',
  ClpDsaParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpDsaParametersGenerator.pas',
  ClpIDsaParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDsaParametersGenerator.pas',
  ClpDsaParameter in '..\..\CryptoLib\src\Asn1\X509\ClpDsaParameter.pas',
  ClpIDsaParameter in '..\..\CryptoLib\src\Interfaces\ClpIDsaParameter.pas',
  ClpIPreCompCallBack in '..\..\CryptoLib\src\Interfaces\ClpIPreCompCallBack.pas',
  ClpNistNamedCurves in '..\..\CryptoLib\src\Asn1\Nist\ClpNistNamedCurves.pas',
  ClpNat320 in '..\..\CryptoLib\src\Math\Raw\ClpNat320.pas',
  ClpNat256 in '..\..\CryptoLib\src\Math\Raw\ClpNat256.pas',
  ClpAesLightEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpAesLightEngine.pas',
  ClpIAesLightEngine in '..\..\CryptoLib\src\Interfaces\ClpIAesLightEngine.pas',
  ClpCustomNamedCurves in '..\..\CryptoLib\src\Crypto\EC\ClpCustomNamedCurves.pas',
  ClpNat384 in '..\..\CryptoLib\src\Math\Raw\ClpNat384.pas',
  ClpNat192 in '..\..\CryptoLib\src\Math\Raw\ClpNat192.pas',
  ClpNat512 in '..\..\CryptoLib\src\Math\Raw\ClpNat512.pas',
  ClpInterleave in '..\..\CryptoLib\src\Math\Raw\ClpInterleave.pas',
  ClpIDsaExt in '..\..\CryptoLib\src\Interfaces\ClpIDsaExt.pas',
  ClpISignersEncodings in '..\..\CryptoLib\src\Interfaces\ClpISignersEncodings.pas',
  ClpBsiObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Bsi\ClpBsiObjectIdentifiers.pas',
  ClpEacObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Eac\ClpEacObjectIdentifiers.pas',
  ClpSchnorrDigestSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpSchnorrDigestSigner.pas',
  ClpISchnorrDigestSigner in '..\..\CryptoLib\src\Interfaces\ClpISchnorrDigestSigner.pas',
  ClpISchnorr in '..\..\CryptoLib\src\Interfaces\ClpISchnorr.pas',
  ClpECSchnorrSipaSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpECSchnorrSipaSigner.pas',
  ClpIECSchnorrSipaSigner in '..\..\CryptoLib\src\Interfaces\ClpIECSchnorrSipaSigner.pas',
  ClpISchnorrExt in '..\..\CryptoLib\src\Interfaces\ClpISchnorrExt.pas',
  ClpBlowfishEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpBlowfishEngine.pas',
  ClpIBlowfishEngine in '..\..\CryptoLib\src\Interfaces\ClpIBlowfishEngine.pas',
  ClpSpeckEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpSpeckEngine.pas',
  ClpISpeckEngine in '..\..\CryptoLib\src\Interfaces\ClpISpeckEngine.pas',
  ClpSecP256R1Custom in '..\..\CryptoLib\src\Math\EC\Custom\Sec\ClpSecP256R1Custom.pas',
  ClpISecP256R1Custom in '..\..\CryptoLib\src\Interfaces\ClpISecP256R1Custom.pas',
  ClpSecP256K1Custom in '..\..\CryptoLib\src\Math\EC\Custom\Sec\ClpSecP256K1Custom.pas',
  ClpISecP256K1Custom in '..\..\CryptoLib\src\Interfaces\ClpISecP256K1Custom.pas',
  ClpSecP384R1Custom in '..\..\CryptoLib\src\Math\EC\Custom\Sec\ClpSecP384R1Custom.pas',
  ClpSecP521R1Custom in '..\..\CryptoLib\src\Math\EC\Custom\Sec\ClpSecP521R1Custom.pas',
  ClpISecP521R1Custom in '..\..\CryptoLib\src\Interfaces\ClpISecP521R1Custom.pas',
  ClpSecT283Custom in '..\..\CryptoLib\src\Math\EC\Custom\Sec\ClpSecT283Custom.pas',
  ClpISecT283Custom in '..\..\CryptoLib\src\Interfaces\ClpISecT283Custom.pas',
  ClpISecP384R1Custom in '..\..\CryptoLib\src\Interfaces\ClpISecP384R1Custom.pas',
  ClpBlockCipherModes in '..\..\CryptoLib\src\Crypto\Modes\ClpBlockCipherModes.pas',
  ClpIBlockCipherModes in '..\..\CryptoLib\src\Interfaces\ClpIBlockCipherModes.pas',
  ClpPaddingModes in '..\..\CryptoLib\src\Crypto\Paddings\ClpPaddingModes.pas',
  ClpIPaddingModes in '..\..\CryptoLib\src\Interfaces\ClpIPaddingModes.pas',
  ClpECC in '..\..\CryptoLib\src\Math\EC\ClpECC.pas',
  ClpX9ECC in '..\..\CryptoLib\src\Asn1\X9\ClpX9ECC.pas',
  ClpIX9ECC in '..\..\CryptoLib\src\Interfaces\ClpIX9ECC.pas',
  ClpECCurveConstants in '..\..\CryptoLib\src\Math\EC\ClpECCurveConstants.pas',
  ClpAsn1Objects in '..\..\CryptoLib\src\Asn1\ClpAsn1Objects.pas',
  ClpSignersEncodings in '..\..\CryptoLib\src\Crypto\Signers\SignersEncodings\ClpSignersEncodings.pas',
  ClpIStreamCipher in '..\..\CryptoLib\src\Interfaces\ClpIStreamCipher.pas',
  ClpBufferedStreamCipher in '..\..\CryptoLib\src\Crypto\ClpBufferedStreamCipher.pas',
  ClpIBufferedStreamCipher in '..\..\CryptoLib\src\Interfaces\ClpIBufferedStreamCipher.pas',
  ClpSalsa20Engine in '..\..\CryptoLib\src\Crypto\Engines\ClpSalsa20Engine.pas',
  ClpISalsa20Engine in '..\..\CryptoLib\src\Interfaces\ClpISalsa20Engine.pas',
  ClpIXSalsa20Engine in '..\..\CryptoLib\src\Interfaces\ClpIXSalsa20Engine.pas',
  ClpXSalsa20Engine in '..\..\CryptoLib\src\Crypto\Engines\ClpXSalsa20Engine.pas',
  ClpIChaChaEngine in '..\..\CryptoLib\src\Interfaces\ClpIChaChaEngine.pas',
  ClpChaChaEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpChaChaEngine.pas',
  ClpRijndaelEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpRijndaelEngine.pas',
  ClpIRijndaelEngine in '..\..\CryptoLib\src\Interfaces\ClpIRijndaelEngine.pas',
  ClpIAlgorithmParameterSpec in '..\..\CryptoLib\src\Interfaces\ClpIAlgorithmParameterSpec.pas',
  ClpIIESParameterSpec in '..\..\CryptoLib\src\Interfaces\ClpIIESParameterSpec.pas',
  ClpIESParameterSpec in '..\..\CryptoLib\src\Crypto\Parameters\ClpIESParameterSpec.pas',
  ClpCurve25519Custom in '..\..\CryptoLib\src\Math\EC\Custom\Djb\ClpCurve25519Custom.pas',
  ClpICurve25519Custom in '..\..\CryptoLib\src\Interfaces\ClpICurve25519Custom.pas',
  ClpX25519Field in '..\..\CryptoLib\src\Math\EC\Rfc7748\ClpX25519Field.pas',
  ClpEd25519 in '..\..\CryptoLib\src\Math\EC\Rfc8032\ClpEd25519.pas',
  ClpIEd25519 in '..\..\CryptoLib\src\Interfaces\ClpIEd25519.pas',
  ClpEd25519Blake2B in '..\..\CryptoLib\src\Math\EC\Rfc8032\ClpEd25519Blake2B.pas',
  ClpIEd25519Blake2B in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2B.pas',
  ClpSpeckLegacyEngine in '..\..\CryptoLib\src\Crypto\Engines\ClpSpeckLegacyEngine.pas',
  ClpISpeckLegacyEngine in '..\..\CryptoLib\src\Interfaces\ClpISpeckLegacyEngine.pas',
  ClpX25519 in '..\..\CryptoLib\src\Math\EC\Rfc7748\ClpX25519.pas',
  ClpEdECObjectIdentifiers in '..\..\CryptoLib\src\Asn1\Edec\ClpEdECObjectIdentifiers.pas',
  ClpIRawAgreement in '..\..\CryptoLib\src\Interfaces\ClpIRawAgreement.pas',
  ClpX25519Agreement in '..\..\CryptoLib\src\Crypto\Agreement\ClpX25519Agreement.pas',
  ClpIX25519Agreement in '..\..\CryptoLib\src\Interfaces\ClpIX25519Agreement.pas',
  ClpX25519PrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpX25519PrivateKeyParameters.pas',
  ClpIX25519PrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIX25519PrivateKeyParameters.pas',
  ClpIX25519PublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIX25519PublicKeyParameters.pas',
  ClpX25519PublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpX25519PublicKeyParameters.pas',
  ClpIEd25519PrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519PrivateKeyParameters.pas',
  ClpIEd25519PublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519PublicKeyParameters.pas',
  ClpIEd25519Blake2BPublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2BPublicKeyParameters.pas',
  ClpIEd25519Blake2BPrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2BPrivateKeyParameters.pas',
  ClpEd25519PrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519PrivateKeyParameters.pas',
  ClpEd25519Blake2BPrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519Blake2BPrivateKeyParameters.pas',
  ClpEd25519PublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519PublicKeyParameters.pas',
  ClpEd25519Blake2BPublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519Blake2BPublicKeyParameters.pas',
  ClpX25519KeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpX25519KeyPairGenerator.pas',
  ClpIX25519KeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIX25519KeyPairGenerator.pas',
  ClpIEd25519KeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIEd25519KeyPairGenerator.pas',
  ClpIEd25519Blake2BKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2BKeyPairGenerator.pas',
  ClpEd25519KeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpEd25519KeyPairGenerator.pas',
  ClpEd25519Blake2BKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpEd25519Blake2BKeyPairGenerator.pas',
  ClpX25519KeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpX25519KeyGenerationParameters.pas',
  ClpIX25519KeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIX25519KeyGenerationParameters.pas',
  ClpIEd25519KeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519KeyGenerationParameters.pas',
  ClpIEd25519Blake2BKeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2BKeyGenerationParameters.pas',
  ClpEd25519KeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519KeyGenerationParameters.pas',
  ClpEd25519Blake2BKeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpEd25519Blake2BKeyGenerationParameters.pas',
  ClpIEd25519Signer in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Signer.pas',
  ClpEd25519Signer in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519Signer.pas',
  ClpIEd25519Blake2BSigner in '..\..\CryptoLib\src\Interfaces\ClpIEd25519Blake2BSigner.pas',
  ClpEd25519Blake2BSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519Blake2BSigner.pas',
  ClpIEd25519CtxBlake2BSigner in '..\..\CryptoLib\src\Interfaces\ClpIEd25519CtxBlake2BSigner.pas',
  ClpEd25519CtxSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519CtxSigner.pas',
  ClpIEd25519CtxSigner in '..\..\CryptoLib\src\Interfaces\ClpIEd25519CtxSigner.pas',
  ClpEd25519CtxBlake2BSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519CtxBlake2BSigner.pas',
  ClpIEd25519PhSigner in '..\..\CryptoLib\src\Interfaces\ClpIEd25519PhSigner.pas',
  ClpIEd25519PhBlake2BSigner in '..\..\CryptoLib\src\Interfaces\ClpIEd25519PhBlake2BSigner.pas',
  ClpEd25519PhSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519PhSigner.pas',
  ClpEd25519PhBlake2BSigner in '..\..\CryptoLib\src\Crypto\Signers\ClpEd25519PhBlake2BSigner.pas',
  ClpTeleTrusTNamedCurves in '..\..\CryptoLib\src\Asn1\TeleTrust\ClpTeleTrusTNamedCurves.pas',
  ClpAgreementUtilities in '..\..\CryptoLib\src\Security\ClpAgreementUtilities.pas',
  ClpKdf1BytesGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpKdf1BytesGenerator.pas',
  ClpIKdf1BytesGenerator in '..\..\CryptoLib\src\Interfaces\ClpIKdf1BytesGenerator.pas',
  ClpIArgon2ParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIArgon2ParametersGenerator.pas',
  ClpArgon2ParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpArgon2ParametersGenerator.pas',
  ClpScryptParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpScryptParametersGenerator.pas',
  ClpIScryptParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIScryptParametersGenerator.pas',
  ClpDHParametersHelper in '..\..\CryptoLib\src\Crypto\Generators\ClpDHParametersHelper.pas',
  ClpDHValidationParams in '..\..\CryptoLib\src\Asn1\X9\ClpDHValidationParams.pas',
  ClpIDHValidationParams in '..\..\CryptoLib\src\Interfaces\ClpIDHValidationParams.pas',
  ClpDHDomainParameters in '..\..\CryptoLib\src\Asn1\X9\ClpDHDomainParameters.pas',
  ClpIDHDomainParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHDomainParameters.pas',
  ClpDHParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHParameters.pas',
  ClpIDHParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHParameters.pas',
  ClpDHValidationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHValidationParameters.pas',
  ClpIDHValidationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHValidationParameters.pas',
  ClpDHKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHKeyParameters.pas',
  ClpIDHKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHKeyParameters.pas',
  ClpDHKeyGeneratorHelper in '..\..\CryptoLib\src\Crypto\Generators\ClpDHKeyGeneratorHelper.pas',
  ClpIDHKeyGeneratorHelper in '..\..\CryptoLib\src\Interfaces\ClpIDHKeyGeneratorHelper.pas',
  ClpDHKeyGenerationParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHKeyGenerationParameters.pas',
  ClpIDHKeyGenerationParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHKeyGenerationParameters.pas',
  ClpDHParametersGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpDHParametersGenerator.pas',
  ClpIDHParametersGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDHParametersGenerator.pas',
  ClpDHPublicKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHPublicKeyParameters.pas',
  ClpIDHPublicKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHPublicKeyParameters.pas',
  ClpDHPrivateKeyParameters in '..\..\CryptoLib\src\Crypto\Parameters\ClpDHPrivateKeyParameters.pas',
  ClpIDHPrivateKeyParameters in '..\..\CryptoLib\src\Interfaces\ClpIDHPrivateKeyParameters.pas',
  ClpDHKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpDHKeyPairGenerator.pas',
  ClpIDHKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDHKeyPairGenerator.pas',
  ClpIDHBasicKeyPairGenerator in '..\..\CryptoLib\src\Interfaces\ClpIDHBasicKeyPairGenerator.pas',
  ClpDHBasicKeyPairGenerator in '..\..\CryptoLib\src\Crypto\Generators\ClpDHBasicKeyPairGenerator.pas',
  ClpIDHBasicAgreement in '..\..\CryptoLib\src\Interfaces\ClpIDHBasicAgreement.pas',
  ClpDHBasicAgreement in '..\..\CryptoLib\src\Crypto\Agreement\ClpDHBasicAgreement.pas',
  ClpIDHAgreement in '..\..\CryptoLib\src\Interfaces\ClpIDHAgreement.pas',
  ClpDHAgreement in '..\..\CryptoLib\src\Crypto\Agreement\ClpDHAgreement.pas',
  ClpAESPRNGRandom in '..\..\CryptoLib\src\Utils\Randoms\ClpAESPRNGRandom.pas',
  ClpCryptLibObjectIdentifiers in '..\..\CryptoLib\src\Asn1\CryptLib\ClpCryptLibObjectIdentifiers.pas',
  ClpEndoPreCompInfo in '..\..\CryptoLib\src\Math\EC\Endo\ClpEndoPreCompInfo.pas',
  ClpIEndoPreCompInfo in '..\..\CryptoLib\src\Interfaces\ClpIEndoPreCompInfo.pas',
  ClpScalarSplitParameters in '..\..\CryptoLib\src\Math\EC\Endo\ClpScalarSplitParameters.pas',
  ClpIScalarSplitParameters in '..\..\CryptoLib\src\Interfaces\ClpIScalarSplitParameters.pas',
  ClpScaleXNegateYPointMap in '..\..\CryptoLib\src\Math\EC\ClpScaleXNegateYPointMap.pas',
  ClpIScaleXNegateYPointMap in '..\..\CryptoLib\src\Interfaces\ClpIScaleXNegateYPointMap.pas',
  ClpIScaleYNegateXPointMap in '..\..\CryptoLib\src\Interfaces\ClpIScaleYNegateXPointMap.pas',
  ClpScaleYNegateXPointMap in '..\..\CryptoLib\src\Math\EC\ClpScaleYNegateXPointMap.pas',
  ClpGlvTypeAEndomorphism in '..\..\CryptoLib\src\Math\EC\Endo\ClpGlvTypeAEndomorphism.pas',
  ClpIGlvTypeAEndomorphism in '..\..\CryptoLib\src\Interfaces\ClpIGlvTypeAEndomorphism.pas',
  ClpIGlvTypeAParameters in '..\..\CryptoLib\src\Interfaces\ClpIGlvTypeAParameters.pas',
  ClpGlvTypeAParameters in '..\..\CryptoLib\src\Math\EC\Endo\ClpGlvTypeAParameters.pas',
  ClpMultipliers in '..\..\CryptoLib\src\Math\EC\Multiplier\ClpMultipliers.pas',
  ClpIMultipliers in '..\..\CryptoLib\src\Interfaces\ClpIMultipliers.pas',
  ClpECCompUtilities in '..\..\CryptoLib\src\Math\EC\ClpECCompUtilities.pas',
  ClpFixedSecureRandom in '..\src\Utils\ClpFixedSecureRandom.pas',
  ClpIFixedSecureRandom in '..\src\Utils\ClpIFixedSecureRandom.pas',
  ClpIShortenedDigest in '..\src\Utils\ClpIShortenedDigest.pas',
  ClpShortenedDigest in '..\src\Utils\ClpShortenedDigest.pas',
  BlowfishTestVectors in '..\src\Crypto\BlowfishTestVectors.pas',
  BlockCipherVectorTests in '..\src\Crypto\BlockCipherVectorTests.pas',
  AESTestVectors in '..\src\Crypto\AESTestVectors.pas',
  SpeckTestVectors in '..\src\Crypto\SpeckTestVectors.pas',
  RijndaelTestVectors in '..\src\Crypto\RijndaelTestVectors.pas',
  OIDTests in '..\src\Asn1\OIDTests.pas',
  SecureRandomTests in '..\src\Security\SecureRandomTests.pas',
  EqualsAndHashCodeTests in '..\src\Asn1\EqualsAndHashCodeTests.pas',
  BigIntegerTests in '..\src\Math\BigIntegerTests.pas',
  ECAlgorithmsTests in '..\src\Math\ECAlgorithmsTests.pas',
  ECPointTests in '..\src\Math\ECPointTests.pas',
  ECDsa5Tests in '..\src\Others\ECDsa5Tests.pas',
  NamedCurveTests in '..\src\Others\NamedCurveTests.pas',
  SignerUtilitiesTests in '..\src\Others\SignerUtilitiesTests.pas',
  DerApplicationSpecificTests in '..\src\Asn1\DerApplicationSpecificTests.pas',
  SecP384R1FieldTests in '..\src\Math\EC\Custom\Sec\SecP384R1FieldTests.pas',
  ECTests in '..\src\Others\ECTests.pas',
  Asn1SequenceParserTests in '..\src\Asn1\Asn1SequenceParserTests.pas',
  ECSchnorrTests in '..\src\Others\ECSchnorrTests.pas',
  DigestRandomNumberTests in '..\src\Crypto\DigestRandomNumberTests.pas',
  FixedPointTests in '..\src\Math\EC\FixedPointTests.pas',
  AESTests in '..\src\Crypto\AESTests.pas',
  IESCipherTests in '..\src\Math\IESCipherTests.pas',
  AESSICTests in '..\src\Crypto\AESSICTests.pas',
  SPECKTests in '..\src\Crypto\SPECKTests.pas',
  Pkcs5Tests in '..\src\Crypto\Pkcs5Tests.pas',
  HkdfGeneratorTests in '..\src\Crypto\HkdfGeneratorTests.pas',
  ECIESTests in '..\src\Math\ECIESTests.pas',
  ECNRTests in '..\src\Math\ECNRTests.pas',
  PaddingTests in '..\src\Crypto\PaddingTests.pas',
  DSATests in '..\src\Crypto\DSATests.pas',
  DeterministicDsaTests in '..\src\Crypto\DeterministicDsaTests.pas',
  BlockCipherMonteCarloTests in '..\src\Crypto\BlockCipherMonteCarloTests.pas',
  HMacTests in '..\src\Crypto\HMacTests.pas',
  MD5HMacTests in '..\src\Crypto\MD5HMacTests.pas',
  SHA1HMacTests in '..\src\Crypto\SHA1HMacTests.pas',
  SHA224HMacTests in '..\src\Crypto\SHA224HMacTests.pas',
  SHA256HMacTests in '..\src\Crypto\SHA256HMacTests.pas',
  SHA384HMacTests in '..\src\Crypto\SHA384HMacTests.pas',
  SHA512HMacTests in '..\src\Crypto\SHA512HMacTests.pas',
  RIPEMD128HMacTests in '..\src\Crypto\RIPEMD128HMacTests.pas',
  RIPEMD160HMacTests in '..\src\Crypto\RIPEMD160HMacTests.pas',
  SecP256R1FieldTests in '..\src\Math\EC\Custom\Sec\SecP256R1FieldTests.pas',
  TagTests in '..\src\Asn1\TagTests.pas',
  StringTests in '..\src\Asn1\StringTests.pas',
  ParsingTests in '..\src\Asn1\ParsingTests.pas',
  ParseTests in '..\src\Asn1\ParseTests.pas',
  EnumeratedTests in '..\src\Asn1\EnumeratedTests.pas',
  Salsa20Tests in '..\src\Crypto\Salsa20Tests.pas',
  ChaChaTests in '..\src\Crypto\ChaChaTests.pas',
  XSalsa20Tests in '..\src\Crypto\XSalsa20Tests.pas',
  StreamCipherResetTests in '..\src\Crypto\StreamCipherResetTests.pas',
  CTSTests in '..\src\Crypto\CTSTests.pas',
  PascalCoinECIESTests in '..\src\Math\PascalCoinECIESTests.pas',
  X25519Tests in '..\src\Math\EC\Rfc7748\X25519Tests.pas',
  Ed25519Tests in '..\src\Math\EC\Rfc8032\Ed25519Tests.pas',
  X25519HigherLevelTests in '..\src\Others\X25519HigherLevelTests.pas',
  Ed25519HigherLevelTests in '..\src\Others\Ed25519HigherLevelTests.pas',
  ShortenedDigestTests in '..\src\Others\ShortenedDigestTests.pas',
  Kdf1GeneratorTests in '..\src\Crypto\Kdf1GeneratorTests.pas',
  Kdf2GeneratorTests in '..\src\Crypto\Kdf2GeneratorTests.pas',
  Argon2Tests in '..\src\Crypto\Argon2Tests.pas',
  DigestUtilitiesTests in '..\src\Security\DigestUtilitiesTests.pas',
  DigestTests in '..\src\Others\DigestTests.pas',
  ScryptTests in '..\src\Crypto\ScryptTests.pas',
  DHTests in '..\src\Crypto\DHTests.pas',
  CryptoLibTestBase in '..\src\CryptoLibTestBase.pas';

begin

  TestInsight.DUnit.RunRegisteredTests;

end.
