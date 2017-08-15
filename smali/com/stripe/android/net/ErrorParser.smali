.class Lcom/stripe/android/net/ErrorParser;
.super Ljava/lang/Object;
.source "ErrorParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stripe/android/net/ErrorParser$StripeError;
    }
.end annotation


# static fields
.field private static final FIELD_CHARGE:Ljava/lang/String; = "charge"

.field private static final FIELD_CODE:Ljava/lang/String; = "code"

.field private static final FIELD_DECLINE_CODE:Ljava/lang/String; = "decline_code"

.field private static final FIELD_ERROR:Ljava/lang/String; = "error"

.field private static final FIELD_MESSAGE:Ljava/lang/String; = "message"

.field private static final FIELD_PARAM:Ljava/lang/String; = "param"

.field private static final FIELD_TYPE:Ljava/lang/String; = "type"

.field static final MALFORMED_RESPONSE_MESSAGE:Ljava/lang/String; = "An improperly formatted error response was found."
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static parseError(Ljava/lang/String;)Lcom/stripe/android/net/ErrorParser$StripeError;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/stripe/android/net/ErrorParser$StripeError;

    invoke-direct {v0}, Lcom/stripe/android/net/ErrorParser$StripeError;-><init>()V

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "error"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string/jumbo v2, "charge"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->charge:Ljava/lang/String;

    const-string/jumbo v2, "code"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->code:Ljava/lang/String;

    const-string/jumbo v2, "decline_code"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->decline_code:Ljava/lang/String;

    const-string/jumbo v2, "message"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    const-string/jumbo v2, "param"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->param:Ljava/lang/String;

    const-string/jumbo v2, "type"

    invoke-static {v1, v2}, Lcom/stripe/android/util/StripeJsonUtils;->optString(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->type:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-string/jumbo v1, "An improperly formatted error response was found."

    iput-object v1, v0, Lcom/stripe/android/net/ErrorParser$StripeError;->message:Ljava/lang/String;

    goto :goto_0
.end method
