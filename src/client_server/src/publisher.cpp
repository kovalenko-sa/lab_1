#include "ros/ros.h"
#include "my_service/roulette.h"
#include <iostream>
#include <string>
#include <cstdlib>

int main(int argc, char **argv)
{
 ros::init(argc, argv, "add_publisher");
 
 ros::NodeHandle n;
 ros::ServiceClient client = n.serviceClient<my_service::roulette>("play_roulette");
 my_service::roulette srv;
 
 while (ros::ok())
 {
  int a;
  std::string b;
  std::cout<<"input number:";
  std::cin>>a;
  std::cout<<"input color:";
  std::cin>>b;
  
  srv.request.number = a;
  srv.request.color = b;
  client.call(srv);
  
  int rnd;
  rnd = rand() %3 +1;
  
  if(srv.response.result == true)
  {
   std::cout<<"Congratulations, you win!!!"<<srv.response.result<<std::endl;
  }
  else
  {
   switch(rnd)
   {
    case 1:
     std::cout<<"You lose, sorry, maybe next time"<<srv.response.result<<std::endl;
     break;
    case 2:
     std::cout<<"You've lost, try again, you'll be lucky"<<srv.response.result<<std::endl;
     break;
    case 3:
     std::cout<<"You lost (( Unlucky in roulette, lucky in love!"<<srv.response.result<<std::endl;
     break;
    }
  }
 }
 
 return 0;
}
