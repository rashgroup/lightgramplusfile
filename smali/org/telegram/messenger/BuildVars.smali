.class public Lorg/telegram/messenger/BuildVars;
.super Ljava/lang/Object;
.source "BuildVars.java"


# static fields
.field public static APP_HASH:Ljava/lang/String;

.field public static APP_ID:I

.field public static BING_SEARCH_KEY:Ljava/lang/String;

.field public static BUILD_VERSION:I

.field public static BUILD_VERSION_STRING:Ljava/lang/String;

.field public static DEBUG_PRIVATE_VERSION:Z

.field public static DEBUG_VERSION:Z

.field public static FOURSQUARE_API_ID:Ljava/lang/String;

.field public static FOURSQUARE_API_KEY:Ljava/lang/String;

.field public static FOURSQUARE_API_VERSION:Ljava/lang/String;

.field public static HOCKEY_APP_HASH:Ljava/lang/String;

.field public static HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    sput-boolean v0, Lorg/telegram/messenger/BuildVars;->DEBUG_PRIVATE_VERSION:Z

    const/16 v0, 0x3bd

    sput v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION:I

    const-string/jumbo v0, "3.18"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BUILD_VERSION_STRING:Ljava/lang/String;

    const v0, 0x17c6b

    sput v0, Lorg/telegram/messenger/BuildVars;->APP_ID:I

    const-string/jumbo v0, "9334bb5d896597b303a0c50ffe0f74c5"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->APP_HASH:Ljava/lang/String;

    const-string/jumbo v0, "25cf852e4b0b41cba23d4fce52822972"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH:Ljava/lang/String;

    const-string/jumbo v0, "25cf852e4b0b41cba23d4fce52822972"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->HOCKEY_APP_HASH_DEBUG:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->BING_SEARCH_KEY:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_KEY:Ljava/lang/String;

    const-string/jumbo v0, ""

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_ID:Ljava/lang/String;

    const-string/jumbo v0, "20150326"

    sput-object v0, Lorg/telegram/messenger/BuildVars;->FOURSQUARE_API_VERSION:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
