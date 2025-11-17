/*
  Warnings:

  - You are about to drop the column `dateOfBirth` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `documentNumber` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `firstName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `gender` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `isActive` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `lastName` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `nationalityId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `passportCountryId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `passportNumber` on the `User` table. All the data in the column will be lost.
  - You are about to drop the column `phoneId` on the `User` table. All the data in the column will be lost.
  - You are about to drop the `Benefit` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `City` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CityTranslation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CompanyAdmin` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CompanyInstallation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CompanyWorker` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Country` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `CountryTranslation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Currency` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Feature` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Itinerary` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `ItineraryItem` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Language` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Media` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PackageLanguage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Permission` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Phone` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PickupDetail` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PostalCode` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `PricingOption` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Region` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `RegionTranslation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Schedule` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `SystemAdmin` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TourismCompany` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TourismCompanyTranslation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `Tourist` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TouristPackage` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `TouristPackageTranslation` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `_WorkerPermissions` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE "Benefit" DROP CONSTRAINT "Benefit_packageId_fkey";

-- DropForeignKey
ALTER TABLE "City" DROP CONSTRAINT "City_regionId_fkey";

-- DropForeignKey
ALTER TABLE "CityTranslation" DROP CONSTRAINT "CityTranslation_cityId_fkey";

-- DropForeignKey
ALTER TABLE "CityTranslation" DROP CONSTRAINT "CityTranslation_languageId_fkey";

-- DropForeignKey
ALTER TABLE "CompanyAdmin" DROP CONSTRAINT "CompanyAdmin_userId_fkey";

-- DropForeignKey
ALTER TABLE "CompanyInstallation" DROP CONSTRAINT "CompanyInstallation_companyId_fkey";

-- DropForeignKey
ALTER TABLE "CompanyInstallation" DROP CONSTRAINT "CompanyInstallation_postalCodeId_fkey";

-- DropForeignKey
ALTER TABLE "CompanyWorker" DROP CONSTRAINT "CompanyWorker_companyId_fkey";

-- DropForeignKey
ALTER TABLE "CompanyWorker" DROP CONSTRAINT "CompanyWorker_userId_fkey";

-- DropForeignKey
ALTER TABLE "Country" DROP CONSTRAINT "Country_currencyId_fkey";

-- DropForeignKey
ALTER TABLE "CountryTranslation" DROP CONSTRAINT "CountryTranslation_countryId_fkey";

-- DropForeignKey
ALTER TABLE "CountryTranslation" DROP CONSTRAINT "CountryTranslation_languageId_fkey";

-- DropForeignKey
ALTER TABLE "Feature" DROP CONSTRAINT "Feature_packageId_fkey";

-- DropForeignKey
ALTER TABLE "Itinerary" DROP CONSTRAINT "Itinerary_packageId_fkey";

-- DropForeignKey
ALTER TABLE "ItineraryItem" DROP CONSTRAINT "ItineraryItem_itineraryId_fkey";

-- DropForeignKey
ALTER TABLE "Media" DROP CONSTRAINT "Media_packageId_fkey";

-- DropForeignKey
ALTER TABLE "PackageLanguage" DROP CONSTRAINT "PackageLanguage_languageId_fkey";

-- DropForeignKey
ALTER TABLE "PackageLanguage" DROP CONSTRAINT "PackageLanguage_packageId_fkey";

-- DropForeignKey
ALTER TABLE "Phone" DROP CONSTRAINT "Phone_countryId_fkey";

-- DropForeignKey
ALTER TABLE "PickupDetail" DROP CONSTRAINT "PickupDetail_packageId_fkey";

-- DropForeignKey
ALTER TABLE "PostalCode" DROP CONSTRAINT "PostalCode_cityId_fkey";

-- DropForeignKey
ALTER TABLE "PricingOption" DROP CONSTRAINT "PricingOption_currencyId_fkey";

-- DropForeignKey
ALTER TABLE "PricingOption" DROP CONSTRAINT "PricingOption_packageId_fkey";

-- DropForeignKey
ALTER TABLE "Region" DROP CONSTRAINT "Region_countryId_fkey";

-- DropForeignKey
ALTER TABLE "RegionTranslation" DROP CONSTRAINT "RegionTranslation_languageId_fkey";

-- DropForeignKey
ALTER TABLE "RegionTranslation" DROP CONSTRAINT "RegionTranslation_regionId_fkey";

-- DropForeignKey
ALTER TABLE "Schedule" DROP CONSTRAINT "Schedule_packageId_fkey";

-- DropForeignKey
ALTER TABLE "SystemAdmin" DROP CONSTRAINT "SystemAdmin_userId_fkey";

-- DropForeignKey
ALTER TABLE "TourismCompany" DROP CONSTRAINT "TourismCompany_adminId_fkey";

-- DropForeignKey
ALTER TABLE "TourismCompany" DROP CONSTRAINT "TourismCompany_languageId_fkey";

-- DropForeignKey
ALTER TABLE "TourismCompanyTranslation" DROP CONSTRAINT "TourismCompanyTranslation_companyId_fkey";

-- DropForeignKey
ALTER TABLE "TourismCompanyTranslation" DROP CONSTRAINT "TourismCompanyTranslation_languageId_fkey";

-- DropForeignKey
ALTER TABLE "Tourist" DROP CONSTRAINT "Tourist_currencyId_fkey";

-- DropForeignKey
ALTER TABLE "Tourist" DROP CONSTRAINT "Tourist_emergencyPhoneId_fkey";

-- DropForeignKey
ALTER TABLE "Tourist" DROP CONSTRAINT "Tourist_languageId_fkey";

-- DropForeignKey
ALTER TABLE "Tourist" DROP CONSTRAINT "Tourist_userId_fkey";

-- DropForeignKey
ALTER TABLE "TouristPackage" DROP CONSTRAINT "TouristPackage_companyId_fkey";

-- DropForeignKey
ALTER TABLE "TouristPackage" DROP CONSTRAINT "TouristPackage_languageId_fkey";

-- DropForeignKey
ALTER TABLE "TouristPackageTranslation" DROP CONSTRAINT "TouristPackageTranslation_languageId_fkey";

-- DropForeignKey
ALTER TABLE "TouristPackageTranslation" DROP CONSTRAINT "TouristPackageTranslation_packageId_fkey";

-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_nationalityId_fkey";

-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_passportCountryId_fkey";

-- DropForeignKey
ALTER TABLE "User" DROP CONSTRAINT "User_phoneId_fkey";

-- DropForeignKey
ALTER TABLE "_WorkerPermissions" DROP CONSTRAINT "_WorkerPermissions_A_fkey";

-- DropForeignKey
ALTER TABLE "_WorkerPermissions" DROP CONSTRAINT "_WorkerPermissions_B_fkey";

-- DropIndex
DROP INDEX "User_passportNumber_key";

-- AlterTable
ALTER TABLE "User" DROP COLUMN "dateOfBirth",
DROP COLUMN "documentNumber",
DROP COLUMN "firstName",
DROP COLUMN "gender",
DROP COLUMN "isActive",
DROP COLUMN "lastName",
DROP COLUMN "nationalityId",
DROP COLUMN "passportCountryId",
DROP COLUMN "passportNumber",
DROP COLUMN "phoneId",
ALTER COLUMN "name" DROP NOT NULL;

-- DropTable
DROP TABLE "Benefit";

-- DropTable
DROP TABLE "City";

-- DropTable
DROP TABLE "CityTranslation";

-- DropTable
DROP TABLE "CompanyAdmin";

-- DropTable
DROP TABLE "CompanyInstallation";

-- DropTable
DROP TABLE "CompanyWorker";

-- DropTable
DROP TABLE "Country";

-- DropTable
DROP TABLE "CountryTranslation";

-- DropTable
DROP TABLE "Currency";

-- DropTable
DROP TABLE "Feature";

-- DropTable
DROP TABLE "Itinerary";

-- DropTable
DROP TABLE "ItineraryItem";

-- DropTable
DROP TABLE "Language";

-- DropTable
DROP TABLE "Media";

-- DropTable
DROP TABLE "PackageLanguage";

-- DropTable
DROP TABLE "Permission";

-- DropTable
DROP TABLE "Phone";

-- DropTable
DROP TABLE "PickupDetail";

-- DropTable
DROP TABLE "PostalCode";

-- DropTable
DROP TABLE "PricingOption";

-- DropTable
DROP TABLE "Region";

-- DropTable
DROP TABLE "RegionTranslation";

-- DropTable
DROP TABLE "Schedule";

-- DropTable
DROP TABLE "SystemAdmin";

-- DropTable
DROP TABLE "TourismCompany";

-- DropTable
DROP TABLE "TourismCompanyTranslation";

-- DropTable
DROP TABLE "Tourist";

-- DropTable
DROP TABLE "TouristPackage";

-- DropTable
DROP TABLE "TouristPackageTranslation";

-- DropTable
DROP TABLE "_WorkerPermissions";

-- DropEnum
DROP TYPE "AccessibilityFeature";

-- DropEnum
DROP TYPE "CancellationPolicyType";

-- DropEnum
DROP TYPE "DayOfWeek";

-- DropEnum
DROP TYPE "DifficultyLevel";

-- DropEnum
DROP TYPE "Gender";

-- DropEnum
DROP TYPE "MediaType";

-- DropEnum
DROP TYPE "PackageType";
