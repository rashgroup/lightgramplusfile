.class Lorg/telegram/ui/LocationActivity$21;
.super Ljava/lang/Object;
.source "LocationActivity.java"

# interfaces
.implements Lorg/telegram/ui/ActionBar/ThemeDescription$ThemeDescriptionDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LocationActivity;->getThemeDescriptions()[Lorg/telegram/ui/ActionBar/ThemeDescription;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LocationActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LocationActivity;)V
    .locals 0

    iput-object p1, p0, Lorg/telegram/ui/LocationActivity$21;->this$0:Lorg/telegram/ui/LocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public didSetColor(I)V
    .locals 1

    iget-object v0, p0, Lorg/telegram/ui/LocationActivity$21;->this$0:Lorg/telegram/ui/LocationActivity;

    # invokes: Lorg/telegram/ui/LocationActivity;->updateUserData()V
    invoke-static {v0}, Lorg/telegram/ui/LocationActivity;->access$2900(Lorg/telegram/ui/LocationActivity;)V

    return-void
.end method
