.class Lorg/telegram/ui/SettingsActivity$10;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Lorg/telegram/tgnet/RequestDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/SettingsActivity;->performAskAQuestion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/SettingsActivity;

.field final synthetic val$preferences:Landroid/content/SharedPreferences;

.field final synthetic val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/SettingsActivity;Landroid/content/SharedPreferences;Lorg/telegram/ui/ActionBar/AlertDialog;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/SettingsActivity$10;->this$0:Lorg/telegram/ui/SettingsActivity;

    iput-object p2, p0, Lorg/telegram/ui/SettingsActivity$10;->val$preferences:Landroid/content/SharedPreferences;

    iput-object p3, p0, Lorg/telegram/ui/SettingsActivity$10;->val$progressDialog:Lorg/telegram/ui/ActionBar/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run(Lorg/telegram/tgnet/TLObject;Lorg/telegram/tgnet/TLRPC$TL_error;)V
    .locals 1

    if-nez p2, :cond_0

    check-cast p1, Lorg/telegram/tgnet/TLRPC$TL_help_support;

    new-instance v0, Lorg/telegram/ui/SettingsActivity$10$1;

    invoke-direct {v0, p0, p1}, Lorg/telegram/ui/SettingsActivity$10$1;-><init>(Lorg/telegram/ui/SettingsActivity$10;Lorg/telegram/tgnet/TLRPC$TL_help_support;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lorg/telegram/ui/SettingsActivity$10$2;

    invoke-direct {v0, p0}, Lorg/telegram/ui/SettingsActivity$10$2;-><init>(Lorg/telegram/ui/SettingsActivity$10;)V

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->runOnUIThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
